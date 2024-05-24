.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
.super Ljava/lang/Object;
.source "Difference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;
    }
.end annotation


# static fields
.field public static final STANDARD_INDENTATION_SIZE:I = 0x4


# instance fields
.field private addedIndentation:Z

.field private final diffElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation
.end field

.field private diffIndex:I

.field private final indentation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field private final nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

.field private final originalElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation
.end field

.field private originalIndex:I


# direct methods
.method public static synthetic $r8$lambda$fHoLnO9UkUnjJx5OtFsyItKQHwA(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p3, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diffElements",
            "nodeText",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "diffElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 39
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 42
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    .line 45
    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    .line 50
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 51
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    .line 52
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    .line 54
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findIndentation(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    .line 55
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nodeText can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustIndentation(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I
    .locals 5
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p3, "nodeTextIndex"    # I
    .param p4, "followedByUnindent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "indentation",
            "nodeText",
            "nodeTextIndex",
            "followedByUnindent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "IZ)I"
        }
    .end annotation

    .line 838
    .local p1, "indentation":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 839
    .local v0, "indentationAdj":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ge p3, v1, :cond_0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    const/16 v4, 0x63

    invoke-virtual {v1, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_0
    if-eqz p4, :cond_1

    .line 842
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 844
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 845
    .local v2, "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_2

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 846
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 848
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "nodeTextIndex":I
    .local v4, "nodeTextIndex":I
    invoke-interface {v3, p3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p3, v4

    .line 850
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .end local v4    # "nodeTextIndex":I
    .restart local p3    # "nodeTextIndex":I
    :goto_2
    goto :goto_1

    .line 851
    :cond_3
    if-ltz p3, :cond_4

    .line 854
    return p3

    .line 852
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private applyAddedDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;)V
    .locals 12
    .param p1, "added"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "added"
        }
    .end annotation

    .line 622
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->isIndent()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 624
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_0
    iput-boolean v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    .line 627
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 628
    return-void

    .line 630
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->isUnindent()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 631
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 632
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    .end local v0    # "i":I
    :cond_2
    iput-boolean v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    .line 635
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 636
    return-void

    .line 639
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->toTextElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    .line 640
    .local v0, "addedTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    const/4 v1, 0x0

    .line 641
    .local v1, "used":Z
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    const/4 v5, 0x2

    if-lez v4, :cond_6

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    sub-int/2addr v4, v2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 642
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v7, v2

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 643
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nextIsRightBrace(I)Z

    move-result v6

    .line 644
    .local v6, "nextIsRightBrace":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 645
    .local v8, "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    if-nez v6, :cond_4

    instance-of v9, v8, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v10, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 647
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-object v10, v8

    check-cast v10, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 648
    iget v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v9, v2

    iput v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_3

    .line 650
    :cond_4
    iget-object v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v10, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v9, v10, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 652
    .end local v8    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :goto_3
    goto :goto_2

    .line 644
    .end local v4    # "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    .end local v6    # "nextIsRightBrace":Z
    :cond_5
    goto/16 :goto_7

    .line 653
    :cond_6
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v4, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isAfterLBrace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isAReplacement(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 654
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 655
    const/4 v1, 0x1

    .line 657
    :cond_7
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->eolTokenKind()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {v4, v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 659
    :goto_4
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lt v4, v5, :cond_8

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 660
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v6, v5

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 661
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_4

    .line 663
    :cond_8
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v7, v2

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 664
    .local v6, "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 665
    .end local v6    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    goto :goto_5

    .line 671
    :cond_9
    iget-boolean v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    if-nez v4, :cond_b

    .line 672
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentationBlock()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 673
    .restart local v6    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 674
    .end local v6    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    goto :goto_6

    .line 653
    :cond_a
    :goto_7
    nop

    .line 678
    :cond_b
    if-nez v1, :cond_d

    .line 680
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v4

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v7, v6, 0x1

    if-le v4, v7, :cond_c

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    .line 681
    invoke-virtual {v4, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 683
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 684
    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v5, v4, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 686
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v4, v5, v6, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result v3

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 687
    add-int/2addr v3, v2

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_8

    .line 689
    :cond_c
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v3, v4, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 690
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 694
    :cond_d
    :goto_8
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 695
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isFollowedByUnindent(Ljava/util/List;I)Z

    move-result v3

    .line 696
    .local v3, "followedByUnindent":Z
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nextIsRightBrace(I)Z

    move-result v4

    .line 697
    .local v4, "nextIsRightBrace":Z
    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v5, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v5

    .line 698
    .local v5, "nextIsNewLine":Z
    if-nez v5, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    if-eqz v3, :cond_10

    .line 699
    :cond_f
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v6, v7, v8, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result v6

    iput v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 703
    .end local v3    # "followedByUnindent":Z
    .end local v4    # "nextIsRightBrace":Z
    .end local v5    # "nextIsNewLine":Z
    :cond_10
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 704
    return-void
.end method

.method private applyKeptDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V
    .locals 4
    .param p1, "kept"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
    .param p2, "originalElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .param p3, "originalElementIsChild"    # Z
    .param p4, "originalElementIsToken"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kept",
            "originalElement",
            "originalElementIsChild",
            "originalElementIsToken"
        }
    .end annotation

    .line 446
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 447
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_2

    .line 448
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 449
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 450
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_2

    .line 451
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isChild()Z

    move-result v0

    const-string v2, " vs "

    const-string v3, "kept "

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 452
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_2

    .line 454
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isNodeWithTypeArguments(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 463
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result v0

    .line 464
    .local v0, "step":I
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 465
    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 466
    .end local v0    # "step":I
    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 468
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    .line 470
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 472
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    .line 474
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p4, :cond_c

    .line 478
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 480
    .local v0, "originalTextToken":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->getTokenType()I

    move-result v2

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 481
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 482
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    .line 483
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isNewLine()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSpaceOrTab()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 484
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 485
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    .line 489
    :cond_8
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isNewLine()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSeparator()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 490
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_0

    .line 491
    :cond_9
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isWhiteSpaceOrComment()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 492
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    .line 493
    :cond_a
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isWhiteSpaceOrComment()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 494
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 498
    .end local v0    # "originalTextToken":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    :goto_0
    goto/16 :goto_2

    .line 496
    .restart local v0    # "originalTextToken":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Csm token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NodeText TOKEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    .end local v0    # "originalTextToken":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    :cond_c
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 499
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_2

    .line 500
    :cond_d
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isIndent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 501
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_2

    .line 502
    :cond_e
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isUnindent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 507
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 508
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->openBraceWasOnSameLine()Z

    move-result v0

    if-nez v0, :cond_f

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_f

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lt v2, v1, :cond_f

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 510
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    .end local v0    # "i":I
    :cond_f
    :goto_2
    return-void

    .line 514
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applyLeftOverDiffElements()Z
    .locals 6

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "isLeftOverElement":Z
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 179
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    .line 180
    .local v1, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    if-eqz v2, :cond_2

    .line 181
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    .line 183
    .local v2, "kept":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isWhiteSpaceOrComment()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isIndent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isUnindent()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot keep element because we reached the end of nodetext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Difference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_1
    :goto_0
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 189
    .end local v2    # "kept":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
    goto :goto_1

    :cond_2
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    if-eqz v2, :cond_3

    .line 190
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    .line 192
    .local v2, "addedElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->toTextElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 193
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 194
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 195
    .end local v2    # "addedElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
    nop

    .line 199
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 196
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v1    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    :cond_4
    :goto_2
    return v0
.end method

.method private applyLeftOverOriginalElements()Z
    .locals 5

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "isLeftOverElement":Z
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 162
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 164
    .local v1, "originalElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NodeText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Difference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    .end local v1    # "originalElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_1
    :goto_0
    return v0
.end method

.method private applyRemovedDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V
    .locals 4
    .param p1, "removedGroup"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    .param p2, "removed"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .param p3, "originalElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .param p4, "originalElementIsChild"    # Z
    .param p5, "originalElementIsToken"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "removedGroup",
            "removed",
            "originalElement",
            "originalElementIsChild",
            "originalElementIsToken"
        }
    .end annotation

    .line 353
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isChild()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 354
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 355
    .local v0, "originalElementChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->isComment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 359
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getCommentedNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getCommentedNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto :goto_0

    .line 362
    :cond_0
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 364
    .end local v1    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    :goto_0
    goto/16 :goto_1

    .line 365
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 367
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    if-nez v1, :cond_3

    .line 368
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isACompleteLine()Z

    move-result v1

    if-nez v1, :cond_3

    .line 369
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->considerEnforcingIndentation(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 372
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-le v1, v2, :cond_5

    if-lez v2, :cond_5

    .line 373
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v2, v2, -0x1

    .line 374
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    if-eqz v1, :cond_5

    .line 377
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_5
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 384
    .end local v0    # "originalElementChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    :goto_1
    goto/16 :goto_3

    :cond_6
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isToken()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_8

    .line 385
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getTokenType()I

    move-result v0

    move-object v1, p3

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v1

    if-eq v0, v1, :cond_7

    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 388
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 389
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isNewLine()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    :cond_7
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 391
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_3

    .line 392
    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 393
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_3

    .line 394
    :cond_9
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isPrimitiveType()Z

    move-result v0

    const-string v1, " vs "

    const-string v2, "removed "

    if-eqz v0, :cond_b

    .line 395
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 396
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 397
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_3

    .line 399
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_b
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_c

    goto :goto_2

    .line 403
    :cond_c
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_3

    .line 406
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_e
    :goto_2
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    .line 409
    :goto_3
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->cleanTheLineOfLeftOverSpace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;)V

    .line 410
    return-void
.end method

.method private cleanTheLineOfLeftOverSpace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;)V
    .locals 6
    .param p1, "removedGroup"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    .param p2, "removed"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "removedGroup",
            "removed"
        }
    .end annotation

    .line 416
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 422
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    if-ne v0, p2, :cond_4

    .line 423
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isACompleteLine()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElementIndex()Ljava/lang/Integer;

    move-result-object v0

    .line 425
    .local v0, "lastElementIndex":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getIndentation()Ljava/util/Optional;

    move-result-object v1

    .line 427
    .local v1, "indentation":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isReplaced(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 428
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 429
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto :goto_1

    .line 432
    :cond_1
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 435
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 428
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->processed()V

    .line 443
    .end local v0    # "lastElementIndex":Ljava/lang/Integer;
    .end local v1    # "indentation":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_4
    return-void
.end method

.method private combineRemovedElementsToRemovedGroups()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->groupConsecutiveRemovedElements()Ljava/util/Map;

    move-result-object v0

    .line 317
    .local v0, "removedElementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "removedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 319
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->of(Ljava/lang/Integer;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;>;"
    goto :goto_0

    .line 322
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    .line 324
    .local v4, "removedGroup":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    .line 325
    .local v6, "index":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v6    # "index":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    goto :goto_2

    .line 327
    .end local v4    # "removedGroup":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    :cond_1
    goto :goto_1

    .line 329
    :cond_2
    return-object v2
.end method

.method private considerEnforcingIndentation(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)I
    .locals 4
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "nodeTextIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex"
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "hasOnlyWsBefore":Z
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 100
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_2
    :goto_1
    move v1, p2

    .line 109
    .local v1, "res":I
    if-eqz v0, :cond_4

    .line 110
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 111
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 115
    move v1, v2

    .line 110
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 118
    .end local v2    # "i":I
    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    .line 121
    return v1

    .line 119
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private doWeHaveLeftBraceFollowedBySpace(I)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 596
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->rewindSpace(I)I

    move-result p1

    .line 597
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    return v0
.end method

.method private extractReshuffledDiffElements(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffElements"
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

    .line 206
    .local p1, "diffElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 207
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    .line 208
    .local v3, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    instance-of v4, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;

    if-eqz v4, :cond_d

    .line 209
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;

    .line 212
    .local v4, "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->getPreviousOrder()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object v5

    .line 213
    .local v5, "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->getNextOrder()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object v6

    .line 216
    .local v6, "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    invoke-direct {v0, v5, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->getCorrespondanceBetweenNextOrderAndPreviousOrder(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;)Ljava/util/Map;

    move-result-object v7

    .line 219
    .local v7, "correspondanceBetweenNextOrderAndPreviousOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v10, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v11, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->node:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->findIndexOfCorrespondingNodeTextElement(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v8

    .line 221
    .local v8, "nodeTextIndexOfPreviousElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v9, "nodeTextIndexToPreviousCSMIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, -0x1

    if-ge v10, v11, :cond_1

    .line 223
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 224
    .local v11, "value":I
    if-eq v11, v12, :cond_0

    .line 225
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v11    # "value":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 228
    .end local v10    # "i":I
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 231
    .local v10, "lastNodeTextIndex":I
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 232
    .local v11, "elementsToBeAddedAtTheEnd":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v13

    .line 234
    .local v13, "nextOrderElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v14, "elementsToAddBeforeGivenOriginalCSMElement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;>;"
    const/4 v15, 0x0

    .local v15, "ni":I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    if-ge v15, v12, :cond_7

    .line 237
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 240
    const/4 v12, -0x1

    .line 241
    .local v12, "originalCsmIndex":I
    add-int/lit8 v17, v15, 0x1

    move/from16 v20, v17

    move-object/from16 v17, v3

    move/from16 v3, v20

    .local v3, "nj":I
    .local v17, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    :goto_3
    move-object/from16 v18, v4

    .end local v4    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .local v18, "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, -0x1

    if-ne v12, v4, :cond_4

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 244
    .end local v12    # "originalCsmIndex":I
    .local v4, "originalCsmIndex":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v19, v6

    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .local v19, "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v14, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 244
    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_2
    move-object/from16 v19, v6

    .line 247
    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v4

    goto :goto_5

    .line 242
    .end local v4    # "originalCsmIndex":I
    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v12    # "originalCsmIndex":I
    :cond_3
    move-object/from16 v19, v6

    .line 241
    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    goto :goto_3

    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_4
    move-object/from16 v19, v6

    .line 251
    .end local v3    # "nj":I
    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    const/4 v3, -0x1

    if-ne v12, v3, :cond_6

    .line 252
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 237
    .end local v12    # "originalCsmIndex":I
    .end local v17    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v18    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .local v3, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .local v4, "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .restart local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 235
    .end local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v4    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v17    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .restart local v18    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .restart local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_6
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    const/4 v12, -0x1

    goto/16 :goto_2

    .end local v17    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v18    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .restart local v4    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .restart local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 266
    .end local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v4    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .end local v6    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .end local v15    # "ni":I
    .restart local v17    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .restart local v18    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .restart local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    move v3, v2

    .line 269
    .local v3, "diffElIterator":I
    const/4 v4, -0x1

    if-eq v10, v4, :cond_c

    .line 270
    iget v4, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .local v4, "ntIndex":I
    :goto_7
    if-gt v4, v10, :cond_b

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 274
    .local v6, "indexOfOriginalCSMElement":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 276
    .local v15, "elementToAdd":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "diffElIterator":I
    .local v16, "diffElIterator":I
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v0, v15}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 277
    .end local v15    # "elementToAdd":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    move-object/from16 v0, p0

    move/from16 v3, v16

    goto :goto_8

    .line 280
    .end local v16    # "diffElIterator":I
    .restart local v3    # "diffElIterator":I
    :cond_8
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 281
    .local v0, "originalCSMElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    .line 282
    .local v12, "toBeKept":Z
    if-eqz v12, :cond_9

    .line 283
    add-int/lit8 v15, v3, 0x1

    move-object/from16 v16, v5

    .end local v3    # "diffElIterator":I
    .end local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .local v15, "diffElIterator":I
    .local v16, "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v5, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v1, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v3, v15

    goto :goto_9

    .line 285
    .end local v15    # "diffElIterator":I
    .end local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v3    # "diffElIterator":I
    .restart local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_9
    move-object/from16 v16, v5

    .end local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "diffElIterator":I
    .local v5, "diffElIterator":I
    new-instance v15, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v15, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v1, v3, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v3, v5

    goto :goto_9

    .line 272
    .end local v0    # "originalCSMElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v6    # "indexOfOriginalCSMElement":I
    .end local v12    # "toBeKept":Z
    .end local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v3    # "diffElIterator":I
    .local v5, "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_a
    move-object/from16 v16, v5

    .line 270
    .end local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    goto/16 :goto_7

    .end local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_b
    move-object/from16 v16, v5

    .end local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    goto :goto_a

    .line 269
    .end local v4    # "ntIndex":I
    .end local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_c
    move-object/from16 v16, v5

    .line 294
    .end local v5    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .restart local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :goto_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 295
    .local v4, "elementToAdd":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "diffElIterator":I
    .local v5, "diffElIterator":I
    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v1, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    .end local v4    # "elementToAdd":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    move v3, v5

    goto :goto_b

    .line 208
    .end local v5    # "diffElIterator":I
    .end local v7    # "correspondanceBetweenNextOrderAndPreviousOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "nodeTextIndexOfPreviousElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "nodeTextIndexToPreviousCSMIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "lastNodeTextIndex":I
    .end local v11    # "elementsToBeAddedAtTheEnd":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    .end local v13    # "nextOrderElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    .end local v14    # "elementsToAddBeforeGivenOriginalCSMElement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;>;"
    .end local v16    # "elementsFromPreviousOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .end local v17    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v18    # "reshuffled":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    .end local v19    # "elementsFromNextOrder":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .local v3, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    :cond_d
    move-object/from16 v17, v3

    .line 206
    .end local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 299
    .end local v2    # "index":I
    :cond_f
    return-void
.end method

.method private findIndexOfCorrespondingNodeTextElement(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 17
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p3, "startIndex"    # I
    .param p4, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "nodeText",
            "startIndex",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "I",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 738
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v4, "correspondingIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .local v5, "csmElementListIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 741
    invoke-interface {v5}, Ljava/util/ListIterator;->previousIndex()I

    move-result v6

    .line 742
    .local v6, "previousCsmElementIndex":I
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 743
    .local v7, "csmElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    .line 745
    .local v8, "nextCsmElementIndex":I
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 746
    .local v9, "potentialMatches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;Ljava/lang/Integer;>;"
    move/from16 v10, p3

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, -0x1

    if-ge v10, v11, :cond_8

    .line 747
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 748
    invoke-virtual {v2, v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v11

    .line 750
    .local v11, "textElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-direct {v0, v11, v7, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v13

    .line 752
    .local v13, "isCorresponding":Z
    if-eqz v13, :cond_5

    .line 753
    const/4 v14, 0x0

    .line 754
    .local v14, "hasSamePreviousElement":Z
    if-lez v10, :cond_0

    if-le v6, v12, :cond_0

    .line 755
    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v2, v12}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v12

    .line 757
    .local v12, "previousTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-direct {v0, v12, v15, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v14

    .line 760
    .end local v12    # "previousTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_0
    const/4 v12, 0x0

    .line 761
    .local v12, "hasSameNextElement":Z
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v10, v15, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_1

    .line 762
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v2, v15}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v15

    .line 764
    .local v15, "nextTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-direct {v0, v15, v1, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v12

    .line 767
    .end local v15    # "nextTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_1
    if-eqz v14, :cond_2

    if-eqz v12, :cond_2

    .line 768
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->ALL:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v1, v15}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 769
    :cond_2
    if-eqz v14, :cond_3

    .line 770
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->PREVIOUS_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v1, v15}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 771
    :cond_3
    if-eqz v12, :cond_4

    .line 772
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->NEXT_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v1, v15}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 774
    :cond_4
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->SAME_ONLY:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v1, v15}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 776
    .end local v12    # "hasSameNextElement":Z
    .end local v14    # "hasSamePreviousElement":Z
    :cond_5
    invoke-direct {v0, v11, v7, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isAlmostCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 777
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->ALMOST:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v1, v12}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 776
    :cond_6
    :goto_2
    nop

    .line 746
    .end local v11    # "textElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .end local v13    # "isCorresponding":Z
    :cond_7
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 783
    .end local v10    # "i":I
    :cond_8
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v10, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda0;-><init>()V

    .line 784
    invoke-static {v10}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 786
    .local v1, "bestMatchKey":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 787
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 789
    :cond_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v1    # "bestMatchKey":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;>;"
    .end local v6    # "previousCsmElementIndex":I
    .end local v7    # "csmElement":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v8    # "nextCsmElementIndex":I
    .end local v9    # "potentialMatches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;Ljava/lang/Integer;>;"
    :goto_4
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 793
    .end local v5    # "csmElementListIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    :cond_a
    return-object v4
.end method

.method private getCorrespondanceBetweenNextOrderAndPreviousOrder(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;)Ljava/util/Map;
    .locals 11
    .param p1, "elementsFromPreviousOrder"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .param p2, "elementsFromNextOrder"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elementsFromPreviousOrder",
            "elementsFromNextOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 709
    .local v0, "correspondanceBetweenNextOrderAndPreviousOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v1

    .line 710
    .local v1, "nextOrderElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v2

    .line 711
    .local v2, "previousOrderElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;-><init>(I)V

    .line 713
    .local v3, "piNext":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;
    const/4 v4, 0x0

    .local v4, "ni":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 714
    const/4 v5, 0x0

    .line 715
    .local v5, "found":Z
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 717
    .local v6, "ne":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    const/4 v7, 0x0

    .local v7, "counter":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    if-nez v5, :cond_1

    .line 718
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->next()Ljava/lang/Integer;

    move-result-object v8

    .line 719
    .local v8, "pi":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 720
    .local v9, "pe":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 721
    invoke-static {v6, v9}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->matching(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 722
    const/4 v5, 0x1

    .line 723
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .end local v8    # "pi":Ljava/lang/Integer;
    .end local v9    # "pe":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 713
    .end local v5    # "found":Z
    .end local v6    # "ne":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .end local v7    # "counter":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 728
    .end local v4    # "ni":I
    :cond_2
    return-object v0
.end method

.method private getIndexToNextTokenElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I
    .locals 5
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .param p2, "nestedDiamondOperator"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "nestedDiamondOperator"
        }
    .end annotation

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "step":I
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    .line 550
    .local v1, "next":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 552
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 554
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 555
    .local v2, "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->valueOf(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    move-result-object v3

    .line 556
    .local v3, "kind":Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;
    invoke-direct {p0, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isDiamondOperator(Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    sget-object v4, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->GT:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 560
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 565
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v4

    if-nez v4, :cond_3

    .line 566
    return v0

    .line 568
    :cond_3
    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result v4

    add-int/2addr v4, v0

    move v0, v4

    return v4
.end method

.method private groupConsecutiveRemovedElements()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;>;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v0, "removedElementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;>;"
    const/4 v1, 0x0

    .line 336
    .local v1, "firstElement":Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 337
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    .line 338
    .local v3, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    instance-of v4, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    if-eqz v4, :cond_1

    .line 339
    if-nez v1, :cond_0

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 343
    :cond_0
    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v5, v3

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    .line 344
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_1
    const/4 v1, 0x0

    .line 336
    .end local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private indentationBlock()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 77
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method

.method private isAReplacement(I)Z
    .locals 2
    .param p1, "diffIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffIndex"
        }
    .end annotation

    .line 858
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAfterLBrace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Z
    .locals 2
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "nodeTextIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex"
        }
    .end annotation

    .line 85
    if-lez p2, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isAfterLBrace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v0

    return v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAlmostCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .param p2, "csmElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textElement",
            "csmElement",
            "node"
        }
    .end annotation

    .line 831
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->isCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 832
    return v1

    .line 834
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isCorrespondingElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 6
    .param p1, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .param p2, "csmElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textElement",
            "csmElement",
            "node"
        }
    .end annotation

    .line 811
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 812
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 813
    .local v0, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v3, :cond_1

    .line 814
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 815
    .local v3, "tokenTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v4

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 817
    .end local v0    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    .end local v3    # "tokenTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    :cond_1
    goto :goto_2

    :cond_2
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_5

    .line 818
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 819
    .local v0, "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz v3, :cond_4

    .line 820
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 821
    .local v3, "childTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 823
    .end local v0    # "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v3    # "childTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    :cond_4
    nop

    .line 827
    :goto_2
    return v2

    .line 824
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private isDiamondOperator(Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;)Z
    .locals 1
    .param p1, "kind"    # Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 575
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->GT:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->LT:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method private isFollowedByUnindent(Ljava/util/List;I)Z
    .locals 2
    .param p2, "diffIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diffElements",
            "diffIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;I)Z"
        }
    .end annotation

    .line 732
    .local p1, "diffElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 733
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 734
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0
.end method

.method private isNodeWithTypeArguments(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 5
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 522
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    .line 523
    .local v0, "csmElem":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    const-class v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 524
    return v2

    .line 525
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 526
    .local v1, "child":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    return v2

    .line 528
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    .line 529
    .local v3, "typeArgs":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isReplaced(I)Z
    .locals 3
    .param p1, "diffIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffIndex"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$groupConsecutiveRemovedElements$0(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p0, "key"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private nextIsRightBrace(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 613
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 614
    .local v2, "element":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-nez v3, :cond_0

    .line 615
    const/16 v1, 0x63

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v1

    return v1

    .line 617
    .end local v2    # "element":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_0
    goto :goto_0

    .line 618
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private openBraceWasOnSameLine()Z
    .locals 3

    .line 579
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    .line 580
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x1

    return v1

    .line 584
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 586
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indentation",
            "prevElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    .line 58
    .local p1, "indentation":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    .local p2, "prevElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "afterNl":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 61
    .local v3, "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    const/4 v1, 0x1

    goto :goto_1

    .line 65
    :cond_0
    if-eqz v1, :cond_1

    instance-of v4, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v4

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 71
    .end local v3    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :goto_1
    goto :goto_0

    .line 72
    :cond_2
    return-object v0
.end method

.method private rewindSpace(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 601
    if-gtz p1, :cond_0

    .line 602
    return p1

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->rewindSpace(I)I

    move-result v0

    return v0

    .line 607
    :cond_1
    return p1
.end method

.method private wasSpaceBetweenBraces()Z
    .locals 4

    .line 590
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 591
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->doWeHaveLeftBraceFollowedBySpace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    sub-int/2addr v0, v2

    .line 592
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 590
    :goto_0
    return v1
.end method


# virtual methods
.method apply()V
    .locals 14

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->extractReshuffledDiffElements(Ljava/util/List;)V

    .line 130
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->combineRemovedElementsToRemovedGroups()Ljava/util/Map;

    move-result-object v0

    .line 133
    .local v0, "removedGroups":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;>;"
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->applyLeftOverDiffElements()Z

    move-result v1

    .line 134
    .local v1, "isLeftOverDiffElement":Z
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->applyLeftOverOriginalElements()Z

    move-result v2

    .line 136
    .local v2, "isLeftOverOriginalElement":Z
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 137
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    .line 139
    .local v3, "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    instance-of v4, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    if-eqz v4, :cond_1

    .line 140
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {p0, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->applyAddedDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 143
    .local v4, "originalElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    instance-of v11, v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 144
    .local v11, "originalElementIsChild":Z
    instance-of v12, v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 146
    .local v12, "originalElementIsToken":Z
    instance-of v5, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    if-eqz v5, :cond_2

    .line 147
    move-object v5, v3

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {p0, v5, v4, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->applyKeptDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V

    goto :goto_0

    .line 148
    :cond_2
    instance-of v5, v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    if-eqz v5, :cond_3

    .line 149
    move-object v13, v3

    check-cast v13, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    .line 150
    .local v13, "removed":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    move-object v5, p0

    move-object v7, v13

    move-object v8, v4

    move v9, v11

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->applyRemovedDiffElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V

    .line 151
    .end local v13    # "removed":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    goto :goto_0

    .line 152
    :cond_3
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    .end local v1    # "isLeftOverDiffElement":Z
    .end local v2    # "isLeftOverOriginalElement":Z
    .end local v3    # "diffElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .end local v4    # "originalElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .end local v11    # "originalElementIsChild":Z
    .end local v12    # "originalElementIsToken":Z
    :cond_4
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Difference{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
