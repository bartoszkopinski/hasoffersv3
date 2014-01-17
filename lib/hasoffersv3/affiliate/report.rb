module HasOffersV3
  module Affiliate
    class Report < Base
      FIELDS = ['Browser.display_name', 'Browser.id', 'ConversionMeta.note', 'Country.name', 'Offer.id',
                'Offer.name', 'OfferUrl.id', 'OfferUrl.name', 'OfferUrl.preview_url', 'Stat.ad_id',
                'Stat.affiliate_info', 'Stat.affiliate_info1', 'Stat.affiliate_info2', 'Stat.affiliate_info3',
                'Stat.affiliate_info4', 'Stat.affiliate_info5', 'Stat.conversion_id', 'Stat.conversion_payout',
                'Stat.conversion_status', 'Stat.date', 'Stat.datetime', 'Stat.hour', 'Stat.id', 'Stat.ip',
                'Stat.is_adjustment', 'Stat.month', 'Stat.offer_id', 'Stat.offer_url_id', 'Stat.payout',
                'Stat.pixel_refer', 'Stat.refer', 'Stat.revenue_type', 'Stat.session_ip', 'Stat.source',
                'Stat.status', 'Stat.status_code', 'Stat.user_agent', 'Stat.week', 'Stat.year', 'Goal.id',
                'Goal.name', 'Stat.goal_id', 'ConversionsMobile.android_id', 'ConversionsMobile.android_id_md5',
                'ConversionsMobile.android_id_sha1', 'ConversionsMobile.device_brand',
                'ConversionsMobile.device_id', 'ConversionsMobile.device_id_md5',
                'ConversionsMobile.device_id_sha1', 'ConversionsMobile.device_model',
                'ConversionsMobile.device_os', 'ConversionsMobile.device_os_version',
                'ConversionsMobile.ios_ifa', 'ConversionsMobile.ios_ifa_md5',
                'ConversionsMobile.ios_ifa_sha1', 'ConversionsMobile.ios_ifv',
                'ConversionsMobile.mac_address', 'ConversionsMobile.mac_address_md5',
                'ConversionsMobile.mac_address_sha1', 'ConversionsMobile.odin',
                'ConversionsMobile.open_udid', 'ConversionsMobile.unknown_id', 'ConversionsMobile.user_id'
              ]

      class << self
        def get_conversions(params = {})
          params.merge!(fields: FIELDS)
          post_request 'getConversions', params
        end
      end
    end
  end
end
