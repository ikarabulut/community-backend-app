EventTag.create!([
  {event_id: 3, tag_id: 3}
])
Tag.create!([
  {tag: "Indoor", archived: false},
  {tag: "Outdoor", archived: false},
  {tag: "Park", archived: false},
  {tag: "Animals", archived: false},
  {tag: "Trees", archived: false},
  {tag: "Garden", archived: false},
  {tag: "Fundraise", archived: false},
  {tag: "Clean-Up", archived: false}
])
Group.create!([
  {user_id: 1, name: "One Tail at a Time", email: "onetail@example.com", address: "2144 N Wood St, Chicago, IL 60614", website: "https://www.onetail.org/", mission_statement: "End pet homelessness by making pet ownership a joyful and accessible experience for all. We accomplish this by rescuing animals from overcrowded shelters, placing them in loving forever homes and providing support and resources to pet owners in need.", archived: false, image_url: "https://www.onetail.org/wp-content/uploads/2021/07/OTAT-PetMutualAid_logo_2021-1536x1536.png", description: "In 2007 Heather Owen, One Tail at a Time’s President and co-Founder, visited Chicago Animal Care and Control for the first time. That year, the city shelter was euthanizing more than 13,000 animals in those walls. The visit was an inspiration to become involved in the animal rescue community and be part of the solution. The next year One Tail at a Time was born inside an Albany Park apartment among five friends.\n\nWe started as a backup plan for animals that were not getting adopted or rescued by other groups in the area shelters. Over the years we have experienced consistent and steady growth, being among the top transfer partners for both open access shelters in Chicago and having a robust transport program in which dogs are continuously rescued from southern states in need.\n\nOur growth was, and continues to be, due to the overwhelming support received from the community. Volunteers lined up to foster and care for dogs, take on leadership roles, and make sure that One Tail at a Time become a name recognized throughout the city.\n\nIn 2015 our growth led to the opening of our first brick and mortar location, the Adoption Center. Since the opening of the Adoption Center community involvement has been at an all-time high. That growth led to the start of the neonate kitten program as well as our shelter diversion program that keeps pets with their families.\n\nIn 2016 we started the “ISO Program” which assists pets in our city shelters that are exposed to shelter illnesses. This vulnerable population of animals was experiencing higher rates of euthanasia and we made the decision to focus on their needs. In 2018 the ISO House was opened, which is a temporary stop over for sick animals coming from the shelter before they move to foster homes.\n\nAs of 2019 One Tail at a Time hosts a bustling dog adoption program at the Adoption Center, an ISO Program focusing on Chicago’s dogs, a Kitten Team that cares for neonate kittens, vaccine clinics in low income neighborhoods, and leads the Chicagoland Rescue Intervention & Support Program (“CRISP”) which keeps pets intending to be surrendered at the city shelter with their loving families."},
  {user_id: 1, name: "Volunteering Untapped", email: "vu@example.com", address: "123 example street", website: "www.volunteeringuntapped.com", mission_statement: "we bring volunteers together", archived: false, image_url: "https://images.squarespace-cdn.com/content/v1/5822095d1b631b4c74dc88bd/1589694041419-N0NHUXR8TTW2M7OXXOH9/VU-Logo-Final%2B%25281%2529.jpg", description: "a very cool group"},
  {user_id: 2, name: "Plant Chicago", email: "plantchicago@example.com", address: "4459 S. Marshfield Ave, Chicago, IL 60659", website: "https://www.plantchicago.org/", mission_statement: "Our mission is to cultivate local circular economies.  ​  We envision a paradigm shift in production, consumption and waste driven at the local level, generating equity and economic opportunity for all residents.", archived: false, image_url: "https://firebelly.cachefly.net/imager/work/plant-chicago-brand-identity/2588/featured__PC_Thumbnail_66f89c0acd8b537effb842e11f71a66c.jpg", description: "Plant Chicago was established in 2011 as the anchor for the project known as The Plant, a collaborative community of food businesses on the southwest side of Chicago. For 8 years, Plant Chicago supported the ever evolving project and brought tangible benefits to the surrounding community.  \n\nWe are now in the process of renovating an abandoned firehouse as a center for circular economy programming in the Back of the Yards neighborhood on the southwest side of Chicago. "}
])
Rsvp.create!([
  {user_id: 3, event_id: 1, rsvp_type: "Going"},
  {user_id: 3, event_id: 1, rsvp_type: "Going"}
])
Event.create!([
  {group_id: 1, name: "Pet dogs", date: "2021-12-24", start_time: "2000-01-01 12:00:00", duration: 120, address: "100 dog street", volunteers_needed: 1000, description: "We will pet all the dogs until our arms hurt", archived: false, image_url: "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg"},
  {group_id: 2, name: "North Pond Clean Up", date: "2021-12-27", start_time: "2000-01-01 09:00:00", duration: 120, address: "2610 N Cannon Dr, Chicago, IL 60614", volunteers_needed: 25, description: "We will walk around north pond and leave it looking better after we leave!", archived: false, image_url: "https://images.pexels.com/photos/7475711/pexels-photo-7475711.jpeg"},
  {group_id: 3, name: "Lighting for Indoor Growing", date: "2022-01-15", start_time: "2000-01-01 10:00:00", duration: 120, address: "Online Event", volunteers_needed: 25, description: "How to illuminate your plants can be a confusing and fraught process, but it doesn't have to be. In this class you will learn the basics of how plants utilize light, how lights produce it, and how to choose among the various types, styles and technologies available.", archived: false, image_url: "https://images.adsttc.com/media/images/55e7/2f99/8450/b545/5500/16f3/newsletter/grow-beds2.jpg"}
])
User.create!([
  {name: "Ismail Karabulut", email: "ismail@example.com", password_digest: "$2a$12$UHuFBGWKxfchkcqcJyp29OEXR3Aee0CFMVLH54bGcCY59Tcb2aHcy"},
  {name: "Mavi", email: "mavi@example.com", password_digest: "$2a$12$0NmaMDD/uRJVbkhsOwml3OnRcj8GkvbVBQGO04s7PCLiTyiFsI4KO"},
  {name: "Amanda Hale", email: "amanda@example.com", password_digest: "$2a$12$UHX2K/1GVgV/NGfI5tx19OQzvP92bq9wbIPn6xWcmxcFEMRtrG/4e"}
])
