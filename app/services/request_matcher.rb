class RequestMatcher

  # Matching logic based on 1) The partner should be experienced with the materials the customer requests
  # 2) The request lon and lat is within the operating radius of the partner
  def self.match_requests_to_partners(request)

    suitable_partners = Partner.where(is_wood: request.is_wood, is_carpet: request.is_carpet, is_tiles: request.is_tiles)

    suitable_partners

  end

end
    # Matching logic here
    # Calculating using postgresql and PostGIS extension
    # partners_within_radius = Partner
    #   .where(
    #     "ST_Distance(
    #       ST_GeographyFromText('POINT(:request_lon :request_lat)', 4326),
    #       ST_GeographyFromText('POINT(' || partners.lon || ' ' || partners.lat || ')', 4326)
    #     ) <= partners.operating_radius",
    #     request_lon: request.lon,
    #     request_lat: request.lat
    #     # operating_radius: operating_radius
    #     # operating_radius: request.operating_radius
    #   )

      # .where("operating_radius >= :operating_radius", operating_radius: request.operating_radius

    # Filter partners based on materials experience
    # suitable_partners = partners_within_radius
    # .where(is_wood: request.is_wood, is_carpet: request.is_carpet, is_tiles: request.is_tiles)
