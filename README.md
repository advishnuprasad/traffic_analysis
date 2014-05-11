Traffic Analysis
----------------

**Input:**

**First Line:**

  1. No of footprints

**Next Lines:**

  1. Separated by space.
  2. &lt;Visitor Id&gt; &lt;Gallery Room Id&gt; &lt;I/O&gt; &lt;Minute&gt;

**Output:**

  &lt;Room No&gt; &lt;Average&gt; &lt;No of visitors&gt;
  
**Attributes**

1. no_of_footprint: integer
2. footprints: array
3. average: hash

**Assumptions**

1. no of footprints should be even
2. If there is an "I" entry for a visitor, there must be "O" entry


**Ruby Version**

  1.9.2-p320

**How to Run**
  
  ruby traffic_analysis.rb
