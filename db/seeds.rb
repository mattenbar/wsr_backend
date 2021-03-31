
# seeding posts REQUIRES the Categories to be numbered EXACTLY STARTING FROM '0'
# IN ORDER FOR THE BELOW POSTS TO WORK....YOU MUST:
#  ROLLBACK YOUR DATABASE TO NOTHING...
        # rake db:migrate VERSION=0 => this will rollback everything
        # rake db:migrate
        # rake db:seed

### THIS IS THE ONLY WAY :)


# reminder: point/counterpoint not in list below...not typical category
capital_connections = Category.create(name: "Capital Connections") # frontend: 0  /  backend/find: 1 
digital_domain = Category.create(name: "The Digital Domain") # frontend: 1  /  backend/find: 2 
shout_out_and_put_downs = Category.create(name: "Shout Outs & Put Downs") # frontend: 2  /  backend/find: 3 
beltway_and_beyond = Category.create(name: "Beltway and Beyond") # frontend: 3  /  backend/find: 4 
people_moves = Category.create(name: "People Moves") # frontend: 4  /  backend/find: 5 
nightmare_on_compliance = Category.create(name: "Nightmare on Compliance St") # frontend: 5  /  backend/find: 6 
buy_it_or_build_it = Category.create(name: "Buy It or Build It") # frontend: 6  /  backend/find: 7 
wallet_share = Category.create(name: "Wallet Share") # frontend: 7  /  backend/find: 8 
cybercrypt_tales = Category.create(name: "Cybercrypt Tales") # frontend: 8  /  backend/find: 9 
on_the_rise = Category.create(name: "On The Rise") # frontend: 9  /  backend/find: 10 
letters_from_larry = Category.create(name: "Letters From Larry") # frontend: 10  /  backend/find: 11 
dramatis_personae = Category.create(name: "Dramatis Personae") # frontend: 11  /  backend/find: 12 
newsmakers_roundup = Category.create(name: "Newsmakers Roundup") # frontend: 12  /  backend/find: 13 
transactions_and_transitions = Category.create(name: "Transactions and Transitions") # frontend: 13  /  backend/find: 14 
cast_and_crew = Category.create(name: "Cast & Crew") # frontend: 14  /  backend/find: 15 
bizarre = Category.create(name: "Bizarre Industry Bazaar") ## frontend: 15  /  backend/find: 16
investment  = Category.create(name: "Investment Solutions & Gatekeepers") # frontend: 16  /  backend/find: 17 
words = Category.create(name: "Words In Edgewise") # frontend: 17  /  backend/find: 18 


fourthPost = Post.create({
    :title => "Testing Post 1",
    :author => "Matt Enbar",
    :content => "Utilise below the line with the possibility to infiltrate new markets. Target a holistic approach with a goal to increase viewability. Funneling user engagement to in turn gain traction. Create awareness yet get buy in. Demonstrating above the line and try to make users into advocates. Grow core competencies to, consequently, create actionable insights.

    Drive user experience and then make the logo bigger. Amplifying responsive websites with a goal to surprise and delight. Targeting daily standups to build ROI. Consider below the fold and possibly get buy in. Engaging brand integration and try to funnel users.
    
    Lead social so that we further your reach. Repurpose best in class to disrupt the balance. Inform above the line and possibly be on brand. Taking integrated tech stacks but re-target key demographics. Inform innovation while remembering to increase viewability. Create branding while remembering to create synergy.
    
    Taking key demographics to in turn come up with a bespoke solution. Create innovation so that we increase viewability. Synchronising integrated tech stacks and try to surprise and delight. Funneling awareness but build ROI. Synchronising above the line to, consequently, use best practice.",
    :image => "https://i.imgur.com/n4td3ic.jpg",
    :category => Category.find(1),
    :created_at => "2021-03-17 05:19:43",
    
    
})

Post.create({
    :title => "Testing Post 2",
    :author => "Osha Groetz",
    :content => "Build thought leadership with the aim to create actionable insights. Generating mobile-first design to in turn innovate. Considering growth channels and then be transparent. Driving below the line with the aim to funnel users. Utilising customer journeys to create a better customer experience. Executing custom solutions and finally funnel users.

    Leverage a holistic approach with the aim to surprise and delight. Lead big data but think outside the box. Demonstrating customer experience and finally make users into advocates. Utilise above the fold to in turn create synergy. Generating relevant and engaging content so that as an end result, we build ROI.
    
    Repurpose big data and above all, re-target key demographics. Funnel agile yet be transparent. Demonstrate below the line to in turn disrupt the balance. Leading first party data to create actionable insights. Drive customer journeys so that we take this offline.
    
    Demonstrate empathy maps to, consequently, use best practice. Lead blue-sky thinking to re-target key demographics. Repurposing sprints and possibly use best practice. Drive analytics with the aim to increase viewability. Growing brand ambassadors to in turn be CMSable.",
    :image => "https://i.imgur.com/demNv7e.jpg",
    :category => Category.find(5),
    :created_at => "2021-03-01 05:19:43",
   
})

Post.create({
    :title => "Testing Post 3",
    :author => "Sid Vicious",
    :content => "Building daily standups yet come up with a bespoke solution. Repurposing above the line to, consequently, further your reach. Building above the line and above all, surprise and delight. Build thought leadership with the possibility to make users into advocates. Consider sprints in order to create actionable insights.

    Consider integrated tech stacks to in turn funnel users. Lead awareness to increase viewability. Leveraging responsive websites with a goal to be transparent. Leveraging a holistic approach so that we be on brand. Lead audience segments with the possibility to come up with a bespoke solution.
    
    Driving big data and finally be transparent. Building user engagement and above all, make users into advocates. Driving brand pillars to improve overall outcomes. Creating blue-sky thinking and finally disrupt the balance. Informing agile so that as an end result, we create synergy.
    
    Leverage vertical integration in order to create synergy. Build thought leadership and possibly improve overall outcomes. Execute sprints with the possibility to re-target key demographics. Informing brand pillars yet maximise share of voice. Amplify custom solutions to in turn maximise share of voice.",
    :image => "https://i.imgur.com/Zhpjeqf.jpg",
    :category => Category.find(2),
    :created_at => "2021-01-01 05:19:43",
 
})

Post.create({
    :title => "Testing Post 4",
    :author => "Matt Enbar",
    :content => "Demonstrating growth hacking so that we disrupt the balance. Amplifying user engagement while remembering to increase viewability. Amplify core competencies and possibly increase viewability. Amplifying daily standups so that as an end result, we innovate. Build best in class yet make the logo bigger.

    Lead stakeholder engagement while remembering to come up with a bespoke solution. Demonstrate user stories to create actionable insights. Demonstrate scrum masters and then create a better customer experience. Engaging customer experience with a goal to be CMSable. Target dark social with the possibility to think outside the box.
    
    Creating a holistic approach in order to create synergy. Leveraging brand pillars but improve overall outcomes. Engaging awareness in order to create a better customer experience. Grow user stories so that as an end result, we create a better customer experience. Synchronising dark social to in turn increase viewability. Driving user engagement to create synergy.
    
    Consider user experience with the aim to re-target key demographics. Create customer experience to gain traction. Considering customer journeys so that as an end result, we make the logo bigger. Considering brand pillars so that we innovate. Grow outside the box thinking with the possibility to be CMSable.",
    :image => "https://i.imgur.com/IXVmPai.jpg",
    :category => Category.find(11),
    :created_at => "2021-02-17 05:19:43",
    
})

Post.create({
    :title => "Testing Post 5",
    :author => "Osha Groetz",
    :content => "Build thought leadership with the aim to create actionable insights. Generating mobile-first design to in turn innovate. Considering growth channels and then be transparent. Driving below the line with the aim to funnel users. Utilising customer journeys to create a better customer experience. Executing custom solutions and finally funnel users.

    Leverage a holistic approach with the aim to surprise and delight. Lead big data but think outside the box. Demonstrating customer experience and finally make users into advocates. Utilise above the fold to in turn create synergy. Generating relevant and engaging content so that as an end result, we build ROI.
    
    Repurpose big data and above all, re-target key demographics. Funnel agile yet be transparent. Demonstrate below the line to in turn disrupt the balance. Leading first party data to create actionable insights. Drive customer journeys so that we take this offline.
    
    Demonstrate empathy maps to, consequently, use best practice. Lead blue-sky thinking to re-target key demographics. Repurposing sprints and possibly use best practice. Drive analytics with the aim to increase viewability. Growing brand ambassadors to in turn be CMSable.",
    :image => "https://i.imgur.com/ayTDnl2.jpg",
    :category => Category.find(1),
    :created_at => "2021-03-17 05:19:43",
    
})

Post.create({
    :title => "Testing Post 6",
    :author => "Pheobe Bridgers",
    :content => "Demonstrating growth hacking so that we disrupt the balance. Amplifying user engagement while remembering to increase viewability. Amplify core competencies and possibly increase viewability. Amplifying daily standups so that as an end result, we innovate. Build best in class yet make the logo bigger.

    Lead stakeholder engagement while remembering to come up with a bespoke solution. Demonstrate user stories to create actionable insights. Demonstrate scrum masters and then create a better customer experience. Engaging customer experience with a goal to be CMSable. Target dark social with the possibility to think outside the box.
    
    Creating a holistic approach in order to create synergy. Leveraging brand pillars but improve overall outcomes. Engaging awareness in order to create a better customer experience. Grow user stories so that as an end result, we create a better customer experience. Synchronising dark social to in turn increase viewability. Driving user engagement to create synergy.
    
    Consider user experience with the aim to re-target key demographics. Create customer experience to gain traction. Considering customer journeys so that as an end result, we make the logo bigger. Considering brand pillars so that we innovate. Grow outside the box thinking with the possibility to be CMSable.",
    :image => "https://i.imgur.com/vY8IF6g.jpg",
    :category => Category.find(5),
    :created_at => "2021-03-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 7",
    :author => "Matt Enbar",
    :content => "Building daily standups yet come up with a bespoke solution. Repurposing above the line to, consequently, further your reach. Building above the line and above all, surprise and delight. Build thought leadership with the possibility to make users into advocates. Consider sprints in order to create actionable insights.

    Consider integrated tech stacks to in turn funnel users. Lead awareness to increase viewability. Leveraging responsive websites with a goal to be transparent. Leveraging a holistic approach so that we be on brand. Lead audience segments with the possibility to come up with a bespoke solution.
    
    Driving big data and finally be transparent. Building user engagement and above all, make users into advocates. Driving brand pillars to improve overall outcomes. Creating blue-sky thinking and finally disrupt the balance. Informing agile so that as an end result, we create synergy.
    
    Leverage vertical integration in order to create synergy. Build thought leadership and possibly improve overall outcomes. Execute sprints with the possibility to re-target key demographics. Informing brand pillars yet maximise share of voice. Amplify custom solutions to in turn maximise share of voice.",
    :image => "https://i.imgur.com/Il7q1Dy.jpg",
    :category => Category.find(2),
    :created_at => "2021-02-15 05:19:43",
    
})

Post.create({
    :title => "Testing Post 8",
    :author => "Phoebe Bridgers",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/ZM450r2.jpg",
    :category => Category.find(1),
    :created_at => "2021-03-17 05:19:43",
    
})

Post.create({
    :title => "Testing Post 9",
    :author => "Sid Vicious",
    :content => "Building daily standups yet come up with a bespoke solution. Repurposing above the line to, consequently, further your reach. Building above the line and above all, surprise and delight. Build thought leadership with the possibility to make users into advocates. Consider sprints in order to create actionable insights.

    Consider integrated tech stacks to in turn funnel users. Lead awareness to increase viewability. Leveraging responsive websites with a goal to be transparent. Leveraging a holistic approach so that we be on brand. Lead audience segments with the possibility to come up with a bespoke solution.
    
    Driving big data and finally be transparent. Building user engagement and above all, make users into advocates. Driving brand pillars to improve overall outcomes. Creating blue-sky thinking and finally disrupt the balance. Informing agile so that as an end result, we create synergy.
    
    Leverage vertical integration in order to create synergy. Build thought leadership and possibly improve overall outcomes. Execute sprints with the possibility to re-target key demographics. Informing brand pillars yet maximise share of voice. Amplify custom solutions to in turn maximise share of voice.",
    :image => "https://i.imgur.com/9R6vLU4.jpg",
    :category => Category.find(5),
    :created_at => "2021-02-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 10",
    :author => "Osha Groetz",
    :content => "Leading innovation to maximise share of voice. Creating growth hacking and possibly gain traction. Leading awareness with the aim to innovate. Demonstrate sprints and try to increase viewability. Leveraging brand pillars so that we create a better customer experience. Informing social so that we maximise share of voice.

    Funnel brand ambassadors and then increase viewability. Amplifying brand ambassadors but take this offline. Create above the line to in turn innovate. Utilise benchmarking and try to innovate. Taking custom solutions so that we create a better customer experience. Target mobile-first design while remembering to use best practice.
    
    Leveraging stakeholder management and then target the low hanging fruit. Consider key demographics and finally use best practice. Demonstrate user engagement to in turn improve overall outcomes. Synchronise bleeding edge and finally further your reach. Consider customer journeys so that we build ROI.
    
    Demonstrating above the line and then use best practice. Take below the line and try to think outside the box. Informing a holistic approach yet further your reach. Repurposing audience segments and then be CMSable. Generating social with a goal to think outside the box.",
    :image => "https://i.imgur.com/xnjS0YT.jpg",
    :category => Category.find(2),
    :created_at => "2021-01-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 11",
    :author => "Matt Enbar",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/Il7q1Dy.jpg",
    :category => Category.find(11),
    :created_at => "2021-02-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 12",
    :author => "Matt Enbar",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/xnjS0YT.jpg",
    :category => Category.find(13),
    :created_at => "2021-02-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 13",
    :author => "Matt Enbar",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/qmHekD3.jpg",
    :category => Category.find(13),
    :created_at => "2021-02-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 14",
    :author => "Matt Enbar",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/IXVmPai.jpg",
    :category => Category.find(14),
    :created_at => "2021-02-01 05:19:43",
    
})

Post.create({
    :title => "Testing Post 15",
    :author => "Matt Enbar",
    :content => "Take agile so that as an end result, we increase viewability. Execute brand integration so that as an end result, we make users into advocates. Leverage blue-sky thinking with the aim to improve overall outcomes. Demonstrate customer journeys and above all, go viral. Repurpose sprints and try to re-target key demographics.

    Generate big data and try to make the logo bigger. Build custom solutions with the possibility to take this offline. Utilising growth hacking and above all, make users into advocates. Informing key demographics and above all, use best practice. Create innovation yet increase viewability. Synchronise vertical integration and possibly innovate.
    
    Repurposing cloud computing and then target the low hanging fruit. Build vertical integration and possibly improve overall outcomes. Considering branding to, consequently, surprise and delight. Engage responsive websites in order to make users into advocates. Repurposing responsive websites to in turn be CMSable.
    
    Repurposing core competencies to be on brand. Generating stakeholder management but be transparent. Inform core competencies and then be CMSable. Drive thought leadership and possibly create a better customer experience. Engaging blue-sky thinking and then create a better customer experience. Generating stakeholder engagement to be transparent.",
    :image => "https://i.imgur.com/n4td3ic.jpg",
    :category => Category.find(14),
    :created_at => "2021-02-01 05:19:43",
    
})

leftFeature = Feature.create({:name => "Left Feature", :post=> Post.find(1)}) #1
mainFeature = Feature.create({:name => "Main Feature", :post=> Post.find(2) }) #2
rightFeature = Feature.create({:name => "Left Feature", :post=> Post.find(3) }) #3


# I wanted to do this, but don't want a password visible:

admin = User.create(:first_name => "Admin", :last_name => "Certified", :company_name => "WSR", :email => "wsrcloudinary@gmail.com", :password => "admin", :admin => true)
matt = User.create(:first_name => "Matthew", :last_name => "Enbar", :company_name => "WSR", :email => "matthew.enbar@gmail.com", :password => "matthew", :admin => true)

# admin = User.create(:first_name => "Admin", :last_name => "Certified", :company_name => "WSR", :email => "wsrcloudinary@gmail.com", :password => "admin", :admin => true)



# pcp1=Pointcp.create(:titleOne => "This is A PCP Article", :contentOne => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dignissim a nulla cursus luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ornare purus in metus euismod, id pretium enim tincidunt. Duis suscipit ipsum pellentesque elit pretium faucibus. Cras a enim pretium, vehicula diam eget, posuere massa. Donec vulputate tincidunt purus, non bibendum enim mattis id. Donec ultrices leo vel erat volutpat ultrices. Nunc vel erat consequat, porta ligula in, dictum orci.", :authorOne => "John T. Doe", :imageOne => "https://i.imgur.com/s2XnoPv.jpg", :titleTwo => "Article 2 Title", :contentTwo => "Nullam ut ornare sem. Etiam est nulla, pellentesque sed sapien et, lobortis euismod augue. Donec augue nunc, viverra id tristique sed, ullamcorper a sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae nulla arcu. Vivamus mattis ipsum venenatis placerat consequat. Proin eu erat est. In ut nunc vel magna lacinia elementum. Nulla ut bibendum augue. Vivamus volutpat tristique ultrices. Nunc egestas interdum nisi sed consectetur.", :authorTwo => "Jerry F. Dill", :imageTwo => "https://i.imgur.com/hUlHGr6.jpg")
# pcp2=Pointcp.create(:titleOne => "A Third Article", :contentOne => "Amet, consectetur adipiscing elit. Nunc dignissim a nulla cursus luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ornare purus in metus euismod, id pretium enim tincidunt. Duis suscipit ipsum pellentesque elit pretium faucibus. Cras a enim pretium, vehicula diam eget, posuere massa. Donec vulputate tincidunt purus, non bibendum enim mattis id. Donec ultrices leo vel erat volutpat ultrices. Nunc vel erat consequat, porta ligula in, dictum orci.", :authorOne => "John T. Doe", :imageOne => "https://i.imgur.com/smiMYKy.jpg", :titleTwo => "Testing Article 4", :contentTwo => "Etiam est nulla, pellentesque sed sapien et, lobortis euismod augue. Donec augue nunc, viverra id tristique sed, ullamcorper a sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae nulla arcu. Vivamus mattis ipsum venenatis placerat consequat. Proin eu erat est. In ut nunc vel magna lacinia elementum. Nulla ut bibendum augue. Vivamus volutpat tristique ultrices. Nunc egestas interdum nisi sed consectetur.", :authorTwo => "Jerry F. Dill", :imageTwo => "https://i.imgur.com/3gt9XQP.jpg")

point_cp1 = Pointcp.create({
    :titleOne => "This is A PCP Article",
    :contentOne => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dignissim a nulla cursus luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ornare purus in metus euismod, id pretium enim tincidunt. Duis suscipit ipsum pellentesque elit pretium faucibus. Cras a enim pretium, vehicula diam eget, posuere massa. Donec vulputate tincidunt purus, non bibendum enim mattis id. Donec ultrices leo vel erat volutpat ultrices. Nunc vel erat consequat, porta ligula in, dictum orci.",
    :authorOne => "John T. Doe",
    :imageOne => "https://i.imgur.com/s2XnoPv.jpg",
    :titleTwo => "Article 2 Title",
    :contentTwo => "Nullam ut ornare sem. Etiam est nulla, pellentesque sed sapien et, lobortis euismod augue. Donec augue nunc, viverra id tristique sed, ullamcorper a sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae nulla arcu. Vivamus mattis ipsum venenatis placerat consequat. Proin eu erat est. In ut nunc vel magna lacinia elementum. Nulla ut bibendum augue. Vivamus volutpat tristique ultrices. Nunc egestas interdum nisi sed consectetur.",
    :authorTwo => "Jerry F. Dill", 
    :imageTwo => "https://i.imgur.com/hUlHGr6.jpg"
})

point_cp2 = Pointcp.create({
    :titleOne => "A Third Article",
    :contentOne => "Amet, consectetur adipiscing elit. Nunc dignissim a nulla cursus luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ornare purus in metus euismod, id pretium enim tincidunt. Duis suscipit ipsum pellentesque elit pretium faucibus. Cras a enim pretium, vehicula diam eget, posuere massa. Donec vulputate tincidunt purus, non bibendum enim mattis id. Donec ultrices leo vel erat volutpat ultrices. Nunc vel erat consequat, porta ligula in, dictum orci.",
    :authorOne => "John T. Doe",
    :imageOne => "https://i.imgur.com/smiMYKy.jpg",
    :titleTwo => "Testing Article 4",
    :contentTwo => "Etiam est nulla, pellentesque sed sapien et, lobortis euismod augue. Donec augue nunc, viverra id tristique sed, ullamcorper a sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae nulla arcu. Vivamus mattis ipsum venenatis placerat consequat. Proin eu erat est. In ut nunc vel magna lacinia elementum. Nulla ut bibendum augue. Vivamus volutpat tristique ultrices. Nunc egestas interdum nisi sed consectetur.",
    :authorTwo => "Jerry F. Dill",
    :imageTwo => "https://i.imgur.com/3gt9XQP.jpg"
})

Ad.create({
    :title => "ad one",
    :company => "zoey",
    :image =>  "http://res.cloudinary.com/wealthsolutionsreport/image/upload/v1617116431/cybn8g70tr4a26lkq9k6.png",
    :link => "https://www.menbarphotos.com"
})

Ad.create({
    :title => "ad two",
    :company => "zoey 2",
    :image =>  "http://res.cloudinary.com/wealthsolutionsreport/image/upload/v1617116431/cybn8g70tr4a26lkq9k6.png",
    :link => "https://www.menbarphotos.com"
})

showAdOne = Showad.create({
    :name => "Left Ad",
    :ad => Ad.find(1)
})

showAdTwo = Showad.create({
    :name => "Right Ad",
    :ad => Ad.find(2)
})