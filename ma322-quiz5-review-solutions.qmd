---
format:
  pdf:
    fontsize: 12pt
    geometry:
      - margin=1in
    pagestyle: empty
---

# Ma322 Quiz 5 Review Solutions

1. True or False
    a) LLMs need to be retrained to respond to different prompting strategies.
    
    **Solution: False**

    LLMs can respond to different prompting strategies without retraining.
    Their ability to understand and follow instructions is built into their
    training.

    b) Using more detailed prompts always guarantees accurate responses from LLMs.
    
    **Solution: False**

    While detailed prompts often improve responses, they don't guarantee
    accuracy. LLMs can still make mistakes regardless of prompt detail.

    c) Chain of thought prompting can help reduce errors but doesn't eliminate them completely.
    
    **Solution: True**

    Chain of thought prompting improves reasoning by breaking down complex
    tasks, but LLMs can still make errors in their logic or conclusions.

2. System prompts help improve responses by
    a) Defining the AI's role and behavior upfront
    b) Training the model on new data
    c) Making the prompts shorter and more efficient
    d) Requiring specific programming languages
   
    **Solution: a**

    System prompts help by defining the AI's role and behavior upfront. This
    sets expectations and context for the model's responses without requiring
    retraining or specific programming.

3. What does the following code print out when executed?

    ```python
    template="Give {num} interesting facts about {subject} in {country}"

    prompt=template.format(num="three", subject="food", country="Italy")
    print(prompt)
    prompt=template.format(country="num", subject="country", num="subject")
    print(prompt)
    ```

    **Solution**

    ```python
    Give three interesting facts about food in Italy
    Give subject interesting facts about country in num
    ```

4. Role-based prompting is most effective for tasks that
    a) Require only factual information
    b) Need specific expertise or perspective
    c) Are purely computational
    d) Have only one correct answer
   
    **Solution: b**

    Role-based prompting works best for tasks needing specific expertise or
    perspective, as it helps frame the response from a particular viewpoint or
    domain knowledge.

5. When using chain of thought prompting, which is true?
    a) It only works for mathematical problems
    b) It helps the model break down complex reasoning into steps
    c) It makes responses shorter and more concise
    d) It requires multiple examples to work
   
    **Solution: b**

    Chain of thought prompting helps the model break down complex reasoning
    into steps, making the thinking process explicit and more reliable.

6. Prompting with Template Variables

    a) Create a template string using a template variable `{topic}` for asking
    the LLM to explain `{topic}` to a beginner.

    ```python
    template= CODE
    ```

    **Solution**

    ```python
    template = "Please explain {topic} to a beginner."
    ```

    b) Evaluate your template using the string "machine learning"

    ```python
    prompt=template.format(CODE)
    ```

    **Solution**

    ```python
    prompt = template.format(topic="machine learning")
    ```
     
    c) Call `get_completion` to get the response from the LLM

    ```python
    response = get_completion(CODE)
    ```

    **Solution**

    ```python
    response = get_completion(prompt)
    ```
     
    d) Print out the prompt and completion.

    ```python
    CODE
    ```

    **Solution**

    ```python
    print(prompt)
    print(response)
    ```

    e) Add another template variable called `{level}` to the template above and
    ask the LLM to explain the topic at the specified difficulty level.

    ```python
    template = CODE
    ```

    **Solution**

    ```python
    template = "Please explain {topic} to someone at a {level} level."
    ```

    f) Evaluate your template with topic as "machine learning" and level as
    "intermediate". Save it in the `prompt` variable. Print out the prompt.

    ```python
    prompt=template.format(CODE)
    CODE
    ```

    **Solution**

    ```python
    prompt = template.format(topic="machine learning", level="intermediate")
    print(prompt)
    ```
