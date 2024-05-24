.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;
.super Ljava/lang/Object;
.source "DifferenceElementCalculator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;
    .locals 12
    .param p0, "original"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .param p1, "after"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "after"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->findChildrenPositions(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/Map;

    move-result-object v0

    .line 107
    .local v0, "childrenInOriginal":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Integer;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->findChildrenPositions(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/Map;

    move-result-object v1

    .line 109
    .local v1, "childrenInAfter":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v2, "commonChildren":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 113
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    const/4 v4, 0x0

    .line 116
    .local v4, "originalIndex":I
    const/4 v5, 0x0

    .line 117
    .local v5, "afterIndex":I
    const/4 v6, 0x0

    .line 118
    .local v6, "commonChildrenIndex":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 119
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "commonChildrenIndex":I
    .local v7, "commonChildrenIndex":I
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 120
    .local v6, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 121
    .local v8, "posOfNextChildInOriginal":I
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 122
    .local v9, "posOfNextChildInAfter":I
    if-lt v4, v8, :cond_0

    if-ge v5, v9, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v10

    invoke-virtual {p1, v5, v9}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculateImpl(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1
    new-instance v10, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    new-instance v11, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-direct {v11, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-direct {v10, v11}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v4, v8, 0x1

    .line 127
    add-int/lit8 v5, v9, 0x1

    .line 128
    .end local v6    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v8    # "posOfNextChildInOriginal":I
    .end local v9    # "posOfNextChildInAfter":I
    move v6, v7

    goto :goto_0

    .line 130
    .end local v7    # "commonChildrenIndex":I
    .local v6, "commonChildrenIndex":I
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_3

    iget-object v7, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 131
    :cond_3
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v4, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v7

    iget-object v8, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculateImpl(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_4
    return-object v3
.end method

.method private static calculateImpl(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;
    .locals 11
    .param p0, "original"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .param p1, "after"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "after"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 173
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    const/4 v1, 0x0

    .line 174
    .local v1, "originalIndex":I
    const/4 v2, 0x0

    .line 180
    .local v2, "afterIndex":I
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 181
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 182
    .local v3, "removedElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-static {v3, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I

    move-result v1

    .line 183
    .end local v3    # "removedElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v3, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 184
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    iget-object v4, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 187
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 188
    .local v3, "nextOriginal":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    iget-object v4, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 190
    .local v4, "nextAfter":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    instance-of v5, v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v5, :cond_4

    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v5, :cond_4

    .line 191
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 195
    :cond_3
    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;

    move-object v6, v3

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-object v7, v4

    check-cast v7, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 199
    :cond_4
    invoke-static {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->matching(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 203
    :cond_5
    invoke-static {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->replacement(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 204
    invoke-static {v3, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I

    move-result v1

    .line 205
    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v5, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v5

    .line 210
    .local v5, "addingElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    const/4 v6, 0x0

    .line 211
    .local v6, "removingElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 212
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v7

    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v6

    .line 215
    :cond_7
    if-eqz v6, :cond_9

    invoke-static {v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_8

    goto :goto_1

    .line 219
    :cond_8
    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v7, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    :cond_9
    :goto_1
    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v7, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 224
    .end local v3    # "nextOriginal":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v4    # "nextAfter":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v5    # "addingElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    .end local v6    # "removingElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    :goto_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 226
    return-object v0
.end method

.method private static considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I
    .locals 3
    .param p0, "removedElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p1, "originalIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "removedElement",
            "originalIndex",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "I",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)I"
        }
    .end annotation

    .line 151
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, "dealtWith":Z
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 154
    .local v1, "removedChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v2

    .line 157
    .local v2, "nodeTextForChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-static {v2, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V

    .line 158
    add-int/lit8 p1, p1, 0x1

    .line 159
    const/4 v0, 0x1

    .line 162
    .end local v1    # "removedChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v2    # "nodeTextForChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    :cond_0
    if-nez v0, :cond_1

    .line 163
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 p1, p1, 0x1

    .line 166
    :cond_1
    return p1
.end method

.method private static considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V
    .locals 7
    .param p0, "nodeTextForChild"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeTextForChild",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 138
    .local v1, "el":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 140
    .local v2, "cte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V

    .line 141
    .end local v2    # "cte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    goto :goto_1

    :cond_0
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v2, :cond_1

    .line 142
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 143
    .local v2, "tte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v5

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "tte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    nop

    .line 147
    .end local v1    # "el":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :goto_1
    goto :goto_0

    .line 145
    .restart local v1    # "el":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    .end local v1    # "el":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_2
    return-void
.end method

.method private static cost(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)J"
        }
    .end annotation

    .line 230
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method private static findChildrenPositions(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/Map;
    .locals 5
    .param p0, "calculatedSyntaxModel"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculatedSyntaxModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "positions":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 81
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 82
    .local v2, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    instance-of v3, v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v2    # "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static synthetic lambda$calculateImpl$0(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 1
    .param p0, "elements"    # Ljava/util/List;
    .param p1, "el"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "elements",
            "el"
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$cost$1(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 230
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeIndentationElements$2(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 1
    .param p0, "el"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "el"
        }
    .end annotation

    .line 239
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static matching(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 5
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 14
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_0

    .line 15
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 16
    .local v0, "childA":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 17
    .local v1, "childB":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 18
    .end local v0    # "childA":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v1    # "childB":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_1

    .line 19
    return v2

    .line 20
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_2

    .line 21
    return v2

    .line 22
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_3

    .line 23
    return v2

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_4
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_a

    .line 28
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_6

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 30
    .local v0, "childA":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 31
    .local v1, "childB":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v4

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 32
    .end local v0    # "childA":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    .end local v1    # "childB":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_6
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_7

    .line 33
    return v2

    .line 34
    :cond_7
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_8

    .line 35
    return v2

    .line 36
    :cond_8
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_9

    .line 37
    return v2

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_a
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_b

    .line 42
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return v0

    .line 43
    :cond_b
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_c

    .line 44
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return v0

    .line 46
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static removeIndentationElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 240
    return-void
.end method

.method private static replacement(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 5
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 50
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_7

    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-nez v0, :cond_7

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 53
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    const-string v2, " "

    if-eqz v0, :cond_3

    .line 54
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 56
    .local v0, "childA":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 57
    .local v1, "childB":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 58
    .end local v0    # "childA":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v1    # "childB":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_2

    .line 59
    return v1

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_6

    .line 64
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_5

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 66
    .local v0, "childA":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 67
    .local v2, "childB":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v3

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 68
    .end local v0    # "childA":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    .end local v2    # "childB":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_5
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_6

    .line 69
    return v1

    .line 72
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_7
    :goto_0
    return v1
.end method
