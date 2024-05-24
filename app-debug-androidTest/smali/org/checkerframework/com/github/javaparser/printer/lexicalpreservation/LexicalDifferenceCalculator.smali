.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
.super Ljava/lang/Object;
.source "LexicalDifferenceCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;,
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculatedSyntaxModelAfterListReplacement(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 3
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p4, "index"    # I
    .param p5, "newValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index",
            "newValue"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 356
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    .line 357
    .local v1, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;

    invoke-direct {v2, p2, p4, p5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 358
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V
    .locals 8
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p4, "change"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "node",
            "elements",
            "change"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;",
            ")V"
        }
    .end annotation

    .line 138
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    .line 140
    .local v0, "csmSequence":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;->getElements()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    .end local v0    # "csmSequence":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;
    :goto_0
    goto/16 :goto_9

    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    if-eqz v0, :cond_4

    .line 144
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    .line 146
    .local v0, "csmSingleReference":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;
    instance-of v1, p4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    if-eqz v1, :cond_2

    move-object v1, p4

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 147
    move-object v1, p4

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .local v1, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_1

    .line 149
    .end local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsSingleReference(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    .line 151
    .restart local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :goto_1
    if-eqz v1, :cond_5

    .line 161
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz v2, :cond_3

    .line 162
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    sget-object v3, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->EOF:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    .end local v0    # "csmSingleReference":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;
    .end local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_4
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    if-eqz v0, :cond_6

    :cond_5
    :goto_2
    goto/16 :goto_9

    .line 169
    :cond_6
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_7

    .line 170
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 171
    :cond_7
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;

    if-eqz v0, :cond_8

    goto/16 :goto_9

    .line 173
    :cond_8
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    if-eqz v0, :cond_17

    .line 174
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    .line 175
    .local v0, "csmList":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->isAboutNodes()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 176
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-interface {p4, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "rawValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Optional;

    const-string v3, "Expected NodeList, found "

    if-eqz v2, :cond_b

    .line 179
    move-object v2, v1

    check-cast v2, Ljava/util/Optional;

    .line 180
    .local v2, "optional":Ljava/util/Optional;
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 181
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v4, :cond_9

    .line 184
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .local v3, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    goto :goto_3

    .line 182
    .end local v3    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_a
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 188
    .end local v2    # "optional":Ljava/util/Optional;
    .restart local v3    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :goto_3
    goto :goto_4

    .line 189
    .end local v3    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_b
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v2, :cond_10

    .line 192
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 194
    .restart local v3    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :goto_4
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 195
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getPreceeding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 196
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 197
    if-eqz v2, :cond_c

    .line 198
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPre()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 200
    :cond_c
    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_d

    .line 202
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPost()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 196
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 206
    .end local v2    # "i":I
    :cond_e
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getFollowing()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 208
    .end local v1    # "rawValue":Ljava/lang/Object;
    .end local v3    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_f
    goto/16 :goto_7

    .line 190
    .restart local v1    # "rawValue":Ljava/lang/Object;
    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v1    # "rawValue":Ljava/lang/Object;
    :cond_11
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-interface {p4, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 210
    .local v1, "collection":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 211
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getPreceeding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 213
    const/4 v2, 0x1

    .line 214
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 215
    if-nez v2, :cond_12

    .line 216
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPre()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 218
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 219
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    if-eqz v5, :cond_14

    .line 220
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 221
    .local v5, "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->toToken(Lorg/checkerframework/com/github/javaparser/ast/Modifier;)I

    move-result v7

    invoke-direct {v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    nop

    .line 225
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 226
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPost()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 228
    :cond_13
    const/4 v2, 0x0

    .line 229
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_6

    .line 223
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_14
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_15
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->getFollowing()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 233
    .end local v0    # "csmList":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v2    # "first":Z
    :cond_16
    :goto_7
    goto/16 :goto_9

    :cond_17
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    if-eqz v0, :cond_19

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    .line 235
    .local v0, "csmConditional":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
    invoke-interface {p4, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->evaluate(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    .line 236
    .local v1, "satisfied":Z
    if-eqz v1, :cond_18

    .line 237
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getThenElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    goto :goto_8

    .line 239
    :cond_18
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getElseElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 241
    .end local v0    # "csmConditional":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
    .end local v1    # "satisfied":Z
    :goto_8
    goto/16 :goto_9

    :cond_19
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_1a

    .line 242
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 243
    :cond_1a
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_1b

    .line 244
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 245
    :cond_1b
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    if-eqz v0, :cond_1d

    .line 246
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    .line 247
    .local v0, "csmAttribute":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-interface {p4, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "text":Ljava/lang/String;
    instance-of v3, v1, Lorg/checkerframework/com/github/javaparser/printer/Printable;

    if-eqz v3, :cond_1c

    .line 250
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/Printable;

    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/printer/Printable;->asString()Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_1c
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->getTokenType(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v0    # "csmAttribute":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "text":Ljava/lang/String;
    goto :goto_9

    :cond_1d
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmString;

    if-eqz v0, :cond_1e

    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    if-eqz v0, :cond_1e

    .line 254
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    .line 255
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 254
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 256
    :cond_1e
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v0, :cond_1f

    .line 257
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 258
    .local v0, "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 259
    .local v1, "mixElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, v1, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 260
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v0    # "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .end local v1    # "mixElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    goto :goto_9

    :cond_1f
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_20

    .line 262
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_9
    return-void

    .line 264
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toToken(Lorg/checkerframework/com/github/javaparser/ast/Modifier;)I
    .locals 2
    .param p0, "modifier"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 269
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :pswitch_0
    const/16 v0, 0x4a

    return v0

    .line 291
    :pswitch_1
    const/16 v0, 0x33

    return v0

    .line 289
    :pswitch_2
    const/16 v0, 0x29

    return v0

    .line 287
    :pswitch_3
    const/16 v0, 0x3e

    return v0

    .line 285
    :pswitch_4
    const/16 v0, 0x36

    return v0

    .line 283
    :pswitch_5
    const/16 v0, 0x3a

    return v0

    .line 281
    :pswitch_6
    const/16 v0, 0xb

    return v0

    .line 279
    :pswitch_7
    const/16 v0, 0x1d

    return v0

    .line 277
    :pswitch_8
    const/16 v0, 0x32

    return v0

    .line 275
    :pswitch_9
    const/16 v0, 0x2e

    return v0

    .line 273
    :pswitch_a
    const/16 v0, 0x2d

    return v0

    .line 271
    :pswitch_b
    const/16 v0, 0x2f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method calculateListAdditionDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 9
    .param p1, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p3, "index"    # I
    .param p4, "nodeAdded"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index",
            "nodeAdded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList;",
            "I",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 100
    .local v0, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    .line 101
    .local v1, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v8

    .line 102
    .local v8, "original":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListAddition(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v2

    .line 103
    .local v2, "after":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-static {v8, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method calculateListRemovalDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;I)Ljava/util/List;
    .locals 5
    .param p1, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList;",
            "I)",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 92
    .local v0, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    .line 93
    .local v1, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v2

    .line 94
    .local v2, "original":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v3

    .line 95
    .local v3, "after":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-static {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method calculateListReplacementDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 9
    .param p1, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p3, "index"    # I
    .param p4, "newValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList;",
            "I",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 108
    .local v0, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    .line 109
    .local v1, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v8

    .line 110
    .local v8, "original":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListReplacement(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v2

    .line 111
    .local v2, "after":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-static {v8, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method calculatePropertyChange(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p4, "oldValue"    # Ljava/lang/Object;
    .param p5, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    .line 119
    .local v0, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v7

    .line 120
    .local v7, "original":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterPropertyChange(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v1

    .line 121
    .local v1, "after":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-static {v7, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-direct {v3, v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 123
    .local v3, "difference":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    .line 124
    return-void

    .line 116
    .end local v0    # "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v1    # "after":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .end local v2    # "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    .end local v3    # "difference":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
    .end local v7    # "original":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method calculatedSyntaxModelAfterListAddition(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 9
    .param p1, "container"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "index"    # I
    .param p4, "nodeAdded"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "observableProperty",
            "index",
            "nodeAdded"
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    .line 334
    .local v0, "csm":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v7

    .line 335
    .local v7, "rawValue":Ljava/lang/Object;
    instance-of v1, v7, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_0

    .line 338
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 339
    .local v8, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, v8

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListAddition(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v1

    return-object v1

    .line 336
    .end local v8    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected NodeList, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method calculatedSyntaxModelAfterListAddition(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 3
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p4, "index"    # I
    .param p5, "nodeAdded"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index",
            "nodeAdded"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 326
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    .line 327
    .local v1, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListAdditionChange;

    invoke-direct {v2, p2, p4, p5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListAdditionChange;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 328
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method calculatedSyntaxModelAfterListRemoval(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 5
    .param p1, "container"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "observableProperty",
            "index"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    .line 345
    .local v0, "csm":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 346
    .local v1, "rawValue":Ljava/lang/Object;
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v2, :cond_0

    .line 349
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 350
    .local v2, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    invoke-virtual {p0, v0, p2, v2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v3

    return-object v3

    .line 347
    .end local v2    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected NodeList, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method calculatedSyntaxModelAfterListRemoval(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 3
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 318
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    .line 319
    .local v1, "container":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;

    invoke-direct {v2, p2, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;I)V

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 320
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method calculatedSyntaxModelAfterPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 7
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterPropertyChange(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    return-object v0
.end method

.method calculatedSyntaxModelAfterPropertyChange(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p4, "oldValue"    # Ljava/lang/Object;
    .param p5, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "node",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 311
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    invoke-direct {v1, p3, p4, p5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 312
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    return-object v0
.end method

.method calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csm",
            "node"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 129
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 130
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method synthetic lambda$calculatedSyntaxModelForNode$0$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalDifferenceCalculator(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "elements"    # Ljava/util/List;
    .param p3, "change"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;
    .param p4, "e"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "elements",
            "change",
            "e"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    return-void
.end method

.method synthetic lambda$calculatedSyntaxModelForNode$1$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalDifferenceCalculator(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "mixElements"    # Ljava/util/List;
    .param p3, "change"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;
    .param p4, "e"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "mixElements",
            "change",
            "e"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    return-void
.end method
