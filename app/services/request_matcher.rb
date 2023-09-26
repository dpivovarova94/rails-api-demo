class RequestMatcher
  # Matching logic based on 1) The partner should be experienced with the materials the customer requests
  # 2) The customer is within the operating radius of the partner
  def self.match_requests_to_partners(request)
    # Matching logic here
    partners_within_radius = Partner
    .where(
      "ST_Distance(
         ST_GeographyFromText('SRID=4326;POINT(' || partners.lon || ' ' || partners.lat || ')'),
         ST_GeographyFromText('SRID=4326;POINT(:lon :lat)')
       ) <= operating_radius",
      lon: request.lon,
      lat: request.lat
    )
  end
end
