#show list: it => pad(left: 1em, {
  it
})
#let team_name = {
  underline(
    stroke: 1.5pt,
  )[#text(size: 1.2em, weight: "extrabold")[Coding Is Our Passion]]
}
#let team_member(name) = {
  underline[#name]
}

#set text(12pt)
#show heading: head => {
  text(weight: "bold", size: 1em)[#head]
}
#align(center)[#text(size: 1.5em)[= *Team Agreement Document*]]

Team Name: #team_name

= Team Members
#pad(left: 1em)[
  1. #team_member[Price Hiller]
  2. #team_member[Gavin Diab]
  3. #team_member[Salman Abid]
  4. #team_member[Ethan Grams]
]

#linebreak()

_The success of the group will depend on the cooperation and professionalism of
its members. Employers will expect you to know how to work effectively in
groups: how to determine what needs to be done; how to find information; how to
assess information; how to share the workload; and how to resolve interpersonal
conflicts that might arise._

#linebreak()
Effective collaboration includes, but is not limited to:
- Participating fully (in spirit and actuality)
- Participating professionally (i.e., civil discourse; abiding by the rules of
  academic honesty)
- Meeting responsibilities (i.e., completing assigned tasks on time and to the
  best of your ability)
- Taking the consequences of not abiding by the group’s rules.
- Giving group members appropriate credit where due
- Not giving credit where it isn’t due

After reading through this document, each member needs to sign the document at
the end.

= Team Agreement
#pad(
  left: 1em,
)[
  + The goal the group is trying to accomplish by working on this project is *gain
    experience in collaborating on a code base and enhance our general Java
    programming skills*.
  + Other than during class time, the group will attempt to meet *on every Monday at
    6pm*.
  + Group meetings should be *no more than around an hour long*.
  + The main group communication tool will be *discord*.
  + Each group member agrees to show up for group meetings on time.
  + We should turn up to all meetings unless it has been agreed beforehand or unless
    there are unavoidable events such as illness.
  + In the event that a group member is less than five minutes late, s/he may
    quietly join the group without disrupting it to ask what s/he missed. It is
    optional for the group members to fill in the late-comer.
  + Group members who are avoidably late must: inform us and review the previous
    meeting notes.
  + A group member who does not show up to the meetings more than *3* times will be
    dismissed from the group.
  + All group members will remain in the meeting until (a) all tasks for that
    meeting are completed, or (b) there is unanimous adjournment.
  + All group members will come to the meetings prepared by (a) reading the assigned material, and (b) coming with ideas pertaining to the tasks and decisions to be made.
  + Tasks that group members agree to undertake should be completed to the agreed
    deadline. If it looks as though there will be a problem meeting a deadline, the
    person concerned should seek help from other members of the team in time to
    avoid a delay.
  + There will be an assimilation period at the end of the session to evaluate group
    mechanics and ensure that all tasks have been completed adequately.
  + Each group member has the right to point out whether any of these rules are
    being broken.
  + If a member submits plagiarized material and/or cheats, the group agrees to
    bring this to the instructor’s attention immediately.
  + Each member agrees to familiarize him- or her- self with and abide by UTSA’s
    rules for Academic Honesty (available in the syllabus).
  + Members agree to treat one another with respect. Respect includes no
    name-calling. If you don’t like an idea, address the idea, not the person (for
    example, “I don’t think that idea will work because…” not “That’s stupid”). In
    the event that a group member treats someone inappropriately, s/he will [write a
    consequence]
  + No “cross talking” is allowed. This means not interrupting when someone else is
    talking.
  + In the event that a group member or members are dominating the group, it’s the
    time keeper’s job to politely interrupt them (this is when you can interrupt)
    and ask that someone else speak.
  + Outlined below are certain project development violations that may lead to
    project failure. In the event of the first violation, it is required to inform
    the instructor and treat the team to coffee. A second violation will result in
    dismissal from the group.
    - Insufficient communication with team members, *such as failure to respond on
      Discord to direct pings during a work week 48 hour
      period (weekends excluded)*.
    - Delaying tasks and procrastinating on critical project components and/or showing
      up to meetings without making progress on assigned tasks
    - Not adhering to the project timeline and milestones
    - Accumulating technical debt by taking shortcuts or writing poor-quality code
    - Poor documentation of code
    - Failing to conduct thorough research before implementing solutions
    - Disregarding constructive feedback and failing to incorporate improvements
  + Establish initial roles and responsibilities. Based on the individual
    assessments, identify your preferred roles within the team. You may also decide
    that roles will be assigned prior to a meeting or, if this is not possible, at
    the beginning of a meeting and have roles rotate each meeting. The role assigned
    to you will not impact the grade you receive on the project. Our aim is to
    foster collaboration and ensure that each team member has an opportunity to
    contribute their skills and strengths. Roles may include but are not limited to:
    - Developer (all team members should take this role)
    - Designer
    - Tester
    - Project Manager
    - Documentation Specialist
    - Communication Coordinator.
  + Project timeline and milestones.
  + Other rules that the group would like to add: *none*
]

Divorce Clause: The group leader will determine if each member of the group is
meeting their individual obligation, and may warn the member(s) of poor
contributions. When a group member(s) continuously causes group dysfunction, the
leader and offending member(s) must meet with the teacher. When a group
member(s) chooses not to meet the minimum expectations of positive group
cohesion, that member(s) will receive a grade of 0 (zero) for the group
presentation and be removed from the group. The teacher has the final decision
making responsibility for group divorce.

We, the team named #team_name agree with the information documented in our team
charter, and will try our best to uphold this charter. By signing below, we
indicate our commitment to our team. The group is expected to demonstrate
positive cohesive teamwork while developing and presenting the team project. All
members of the group are to make equal efforts for the success of the group
presentation. All group members are to fulfill the responsibilities of
completing the project and making strong efforts for success related to group
role expectations.

#linebreak()

Each member print name as a signature:

*Team Member*: #team_member[Price Hiller]

*Team Member*: #team_member[Gavin Diab]

*Team Member*: #team_member[Salman Abid]

*Team Member*: #team_member[Ethan Grams]

*Date*: #datetime(year: 2024, month: 06, day: 10).display("[month repr:long] [day]th, [year]")
