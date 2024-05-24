.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.super Ljava/lang/Object;
.source "TextElementIteratorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;,
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;,
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;,
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static partialReverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "fromIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "I)",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 183
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 184
    invoke-static {p0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static reverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/Iterator;
    .locals 1
    .param p0, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->partialReverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static reverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
    .locals 4
    .param p0, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            "I)",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    .line 161
    .local v0, "textElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)V

    return-object v1

    .line 168
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz v1, :cond_1

    .line 169
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 170
    .local v1, "childTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getNodeTextForWrappedNode()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v2

    .line 171
    .local v2, "textForChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/Iterator;

    move-result-object v3

    return-object v3

    .line 173
    .end local v1    # "childTextElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .end local v2    # "textForChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
