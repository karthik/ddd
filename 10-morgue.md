# Morgue

# tabular scope

In this paper we focus on tabular datasets, broadly defined as data that fit into a table. We discuss how to handle small, medium, and large tabular data. We wil not specifically cover data sources such as raster, image, sound, or video. The principles covered will generalise to some extent, however.

## Over-engineered (Fragile and Hard)

Designing something completely bespoke for a given task might not suit other cases, and can be very expensive to create. For example, a dataset could be painstakingly documented using a custom approach that fits that data and context. But in turn this makes it very difficult to read, interpret, and share. Such a dataset is characterized by being **fragile** and **time consuming**. An example of this would be a large, handwritten book that documents the process of designing an experiment. Hand written notes require scanning and encoding into images or PDF to share, and would require transcribing. This is time consuming. It is also fragile as the process can easily be lost. If the book dissappeared and there are no copies, the system would fail. Another example of fragile and time consuming is writing in bespoke software encoded in a binary format that cannot be read by other softwares. Or perhaps the data being recorded using a complex punch card system with thorough documentation. No one reads punch cards anymore, and sharing them is difficult. So it fails. This type of problem can result from trying to optimise and generalise too early. However it is still important

## The Spaceship (Robust and Difficult)

This type of data is called "the spaceship" as it is robust to many situations, and time consuming to create. A spaceship is a very useful machine that helps advance humanity by providing things like satellites and GPS, so the cost and time is justified. Thinking about the effective use of a tool helps us evaluate the effectiveness of data and sharing and evaluate its worth. Something that is robust and time consuming to create, but of little use or consequence would be bad.

There is a tradeoff between the time and resources taken to document something so it can be shared and reproduced, and it's overall worth and importance. For example, Randomized Control Trials (RCTs) for a new drug benefit greatly from reproducibility, as the cost and reward are high: a new drug can have positive health benefits, and is also very expensive to repeat. Equally, the drug trial can have dire effects (severe illness or death), and so must have a high standard for documentation.

There is an important interaction between the importance of the data, the time spent to document it, and the risk and impact of the data. For example, data from RCTs are important and have high risk and high impact. So, a lot of time should be spent documenting them. Comparatively, a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

This tradeoff will change over time as the relative costs also change. For example, if it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent.

Two was to think of the spaceship are the "light aeroplane" and the "heavy falcon". Light aeroplane data come with accompanying human readable README file that describes the data and a machine readable format for reading in the data. Heavy Falcon data have complete information to completely reproduce the data, intructions, motivation, manual, and so on, with a format that is transferrable.
