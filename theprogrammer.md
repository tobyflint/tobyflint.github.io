## 🧑‍💻 The Programmer

### Introduction

This book is my collection of thoughts on the following two questions:

- What is programming?
- How can one program effectively?

For those who need a TL;DR, I posit this list of terse definitions and properties:

- Programming is the organization of space embedded in time.
- Programming is like playing with tiny wooden blocks in 1D space (thank goodness, navigating 3D space is too complex for my brain).
- Programming is the practice of drawing boundaries - lines in the sand.
- Programming is applicable to any medium: hardware, software, body, mind.
- Programming is the art of playing god.

And for programming effectively, it essentially boils down to the following:

- Scrutinize every single dependency.
- Utilize protocols to write modular, uncoupled code.
- Verify everything with automated tests.

There have been numerous books on the subject, and I honestly recommend you read those as opposed to this one. But I’ve had many folks ask me for my own thoughts and I figured I’d make a pass at presenting my perspective. If you stay awhile and read on, I commend your curiosity.

Welcome to my understanding of programming.

### The Elements

There are four basic elements that underly all of programming:

- Void: The lack of any dimension or measurable property.
- Space: A dimension that is traversable in at least one direction. 
- Object: An element that can be measured and exists in space.
- Time: A dimension, just like space. But it is a dimension that - in this model - is traversable in only one direction.

### Communication

Messages, actions, intents, triggers, events, signals, etc. - these words all convey the same core concept of programming: objects communicating to other objects.

### Context

A single object in isolation isn't very interesting, nor is it particularly useful.

The exciting part of programming comes when you place an object in a **context**. That particular point in space in which an object exists, plus the other objects around it, influence its meaning and use.

For example, type “cat pics” in your browser and your heart will become warm and fuzzy. Type “cat pics” in your terminal and Neo will see the matrix. That difference in outcomes is due to the *context* in which “cat pics” is placed.

Any spacial context embedded in time can be programmed.

### Testing

#### Verify in Order to Build - Don’t Build in Order to Verify

“How you write code”, or the process of churning out symbols to create a solution, often gets far too much attention (particularly in introductory learning resources). 

“How you verify code that has been written”, **this** is what truly matters. 

They’re very similar, and I admit I’m picking at wording a bit. But one approach too often results in *blind output based on principle*, while the other is based on *routinely taking what has been written as input, outputting a set of signals, and evaluating those signals*. 

If you’re thrown into the middle of a project, being able to verify the code currently there is the absolute first step before writing *anything* on top of it. Jumping straight to writing more code will result in brittle (and even undefined) behavior.

Maintaining a focus on verifiability is also a more scalable approach for those looking to become a Senior Engineer. Whether the code you’re looking at is something you wrote, or a colleague wrote, or a contractor wrote, or an intern wrote, your mindset going in should be to *verify what has been written*.

You should have a bulletproof process to verify that the given code solves the problem that the original programmer set out to solve, *regardless of the process they personally used* to arrive at that code.

I have found this to be a subtle but important shift in perspective.

#### Verifiability 

Not all code is equally verifiable. Code can be written in a way that is straightforward to test. It can also be written in a way that is impossible to test.

Make every effort to write verifiable code by keeping it:
- Simple
- Modular
- Uncoupled
- Clean
- True to what it claims to do in the signature

#### Tests as Documentation 

Documented code is well-loved code. But documentation also has the tendency to be neglected and slowly become more and more out of sync.

One perspective on automated tests is that they are simply documentation that cannot ever go out of sync without complaining bitterly. 

#### Test for Others’ Sake

The dire need for testing doesn’t really, truly kick in until you’ve had people build *on top of* what you write. There are few feelings worse than continually breaking other programmers’ code because of your un-tested changes on your un-tested middleware library.

Don’t just test for your own sake, or for the programmers who contribute to your code, or for the programmers who will take over your code; test for those who will build on top of your code.

### Structure

#### Dependency Hell

Many unproductive late nights could be framed as struggles with dependencies. Code that’s already there and difficult to interface with. Important bits of knowledge locked away in people. Nebulous goals that must nonetheless be adhered to. 

Relief comes either because you familiarize yourself with that dependency, or you remove the dependency entirely and internalize it. 

#### Modifiability

Consider a marble sculpture vs a LEGO model. Great objects can be made in both, and perhaps the marble sculpture can be considered more impressive, but only one of these can be easily modified. 

#### Global State Container

There’s nothing wrong with global state, in the sense that your state container exists in a central, top-level location in your program. 

The trouble starts when objects blindly start reaching out for it - assuming it’s going to be there - and cause tightly-coupled tantrums when it isn’t. 

### The Three Virtues

According to Larry Wall, there are three great virtues of a programmer; Laziness, Impatience, and Hubris.

Based on my own experience, I have found this to be true.

### The Checklist / “Lenses”

I’m a big fan of *The Art of Game Design* by Jesse Schell and his concept of **Lenses**.

The following is my set of lenses to plan for (or review the implementation of) a feature.

- Code Structure
    - Dependencies
    - Protocols
    - Separation of model and view (MV*)
    - Enums
    - Code ownership 
- Code quality
    - Linting
    - Cleanliness
    - Access control (public/private)
    - Comments
    - Supporting documentation 
- Storage
    - Memory caches
    - Disk caches
    - Disk storage
    - Single source of truth (SSoT)
- Networking
    - Loading states
    - Error states
    - Retry logic
    - Paging
- Telemetry
    - Logging 
    - Analytics
    - Crash reports
- Integrity
    - Security
    - Privacy
    - Authentication 
    - Authorization 
    - Data governance
- Iteration-friendly
    - Versioning
    - Feature flags
    - Remote configuration 
- Misc
    - Performance
    - Tooling
- UI and content
    - Strings
    - Images
    - Sounds
    - Animations
    - Frame rate 
- Globalization
    - a11y
    - i18n
    - l10n
- QA
    - Automated tests
        - Unit
        - Integration
        - Screenshot
        - E2E
    - Substitutes
        - Mocks
        - Stubs
        - Spies
        - Fakes

### Miscellaneous things to keep in mind

There’s a difference between organized code and uncoupled code. Protocols are the king of uncoupling. All objects should specify big dependencies as protocols in their constructors, **not** concrete objects.

### Metrics for Codebase Quality

What follows is a list of questions you can ask about your codebase to measure its quality. In almost all instances, the proper use of state containers, protocols, and observables are keys to increasing the quality of your codebase. They ease automated testing, external dependency management, reasoning, and modification. 

#### The *can you whip up a CLI?* metric

How easily can you create a CLI version of your app? If you have bigger questions than “how exactly do I interface with the command line and why are we doing this again?”, your code is dangerously coupled. 

#### The *nuke the external dependency* metric

Pick one of your external dependencies. That dependency is now nuked to oblivion. Yes, this includes “UIKit”. Or “Angular”. Or ”Unity”. Or even “Objective-C”. How much code do you have to overhaul to recover? If it’s “a lot” or “oh sh*t everything”, your code is dangerously coupled. 

#### The *where does the data live anyway?* metric

A UI element or processing object in the pipeline should not care where its data lives or comes from. If you cannot easily inject your UI or objects in your pipeline with a mock/test data source for automated testing, your code is dangerously coupled. 

#### The *wait, my language is a dependency?* metric

Every language has nifty idioms, but if the idea of writing your codebase in a different language terrifies you, you need to take a step back and use simpler abstractions + protocols. 

#### The *upstart intern monkey has the keys to the kingdom* metric

If an upstart intern monkey started committing things at random to your codebase while you were on a weeklong island vacation, would you be able to recover? Bonus points: if there were actually positive changes they happened to make, could you undo the bad and keep the good? Hint: how good are your backups, source control, and automated test suite?
