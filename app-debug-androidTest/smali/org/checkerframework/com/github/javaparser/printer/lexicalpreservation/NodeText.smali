.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
.super Ljava/lang/Object;
.source "NodeText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;
    }
.end annotation


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;-><init>(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
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
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    .line 52
    return-void
.end method

.method static synthetic lambda$expand$0(Ljava/lang/StringBuffer;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "e"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->expand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method addChild(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "child"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 85
    return-void
.end method

.method addChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 81
    return-void
.end method

.method addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "nodeTextElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeTextElement"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method addElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .param p1, "nodeTextElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeTextElement"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method addToken(IILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenKind"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "tokenKind",
            "text"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method addToken(ILjava/lang/String;)V
    .locals 2
    .param p1, "tokenKind"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenKind",
            "text"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public endWithSpace()Z
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    return v1

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 225
    .local v0, "lastElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    instance-of v2, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v2, :cond_2

    .line 226
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 228
    :cond_2
    return v1
.end method

.method expand()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method findChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findChild(Lorg/checkerframework/com/github/javaparser/ast/Node;I)I

    move-result v0

    return v0
.end method

.method findChild(Lorg/checkerframework/com/github/javaparser/ast/Node;I)I
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "from"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->byNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    return v0
.end method

.method findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    return v0
.end method

.method findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I
    .locals 4
    .param p1, "matcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "from"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    .line 105
    .local v0, "res":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    return v0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 107
    const-string v3, "I could not find child \'%s\' from position %d. Elements: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    return-object v0
.end method

.method getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
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

    .line 207
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    return-object v0
.end method

.method numberOfElements()I
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method remove(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V
    .locals 2
    .param p1, "matcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 146
    return-void
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Z)V
    .locals 4
    .param p1, "matcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p2, "potentiallyFollowingWhitespace"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "potentiallyFollowingWhitespace"
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "i":I
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 151
    .local v2, "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-interface {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    if-eqz p2, :cond_1

    .line 154
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 164
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method removeElement(I)V
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

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public removeLastElement()V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method replace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 2
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p2, "newElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "newElement"
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    .line 182
    .local v0, "index":I
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeText{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tryToFindChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindChild(Lorg/checkerframework/com/github/javaparser/ast/Node;I)I

    move-result v0

    return v0
.end method

.method tryToFindChild(Lorg/checkerframework/com/github/javaparser/ast/Node;I)I
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "from"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->byNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    return v0
.end method

.method tryToFindElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I
    .locals 3
    .param p1, "matcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "from"
        }
    .end annotation

    .line 115
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 117
    .local v1, "element":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-interface {p1, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    return v0

    .line 115
    .end local v1    # "element":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
