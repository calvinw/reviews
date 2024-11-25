---
format:
  pdf:
    fontsize: 12pt
    geometry:
      - margin=1in
    pagestyle: empty
---

# Ma322 Quiz 5 Review

1. True or False
    a) LLMs need to be retrained to respond to different prompting strategies.
    b) Using more detailed prompts always guarantees accurate responses from LLMs.
    c) Chain of thought prompting can help reduce errors but doesn't eliminate them completely.

2. System prompts help improve responses by
    a) Defining the AI's role and behavior upfront
    b) Training the model on new data
    c) Making the prompts shorter and more efficient
    d) Requiring specific programming languages

3. What does the following code print out when executed?

    ```python
    template="Give {num} interesting facts about {subject} in {country}"

    prompt=template.format(num="three", subject="food", country="Italy")
    print(prompt)
    prompt=template.format(country="num", subject="country", num="subject")
    print(prompt)
    ```
4. Role-based prompting is most effective for tasks that
    a) Require only factual information
    b) Need specific expertise or perspective
    c) Are purely computational
    d) Have only one correct answer

5. When using chain of thought prompting, which is true?
    a) It only works for mathematical problems
    b) It helps the model break down complex reasoning into steps
    c) It makes responses shorter and more concise
    d) It requires multiple examples to work

:::{.content-visible when-format="pdf"}
\newpage
:::

6. Prompting with Template Variables

    a) Create a template string using a template variable `{topic}` for asking
    the LLM to explain `{topic}` to a beginner.

    ```python
    template= CODE
    ```
    b) Evaluate your template using the string "machine learning"

    ```python
    prompt=template.format(CODE)
    ```
     
    c) Call `get_completion` to get the response from the LLM

    ```python
    response = get_completion(CODE)
    ```
     
    d) Print out the prompt and completion.

    ```python
    CODE
    ```

    e) Add another template variable called `{level}` to the template above and
    ask the LLM to explain the topic at the specified difficulty level.

    ```python
    template = CODE
    ```

    f) Evaluate your template with topic as "machine learning" and level as
    "intermediate". Save it in the `prompt` variable. Print out the prompt.

    ```python
    prompt=template.format(CODE)
    CODE
    ```
