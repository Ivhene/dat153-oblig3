.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
.super Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
.source "ChildTextElement.java"


# instance fields
.field private final child:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 64
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 69
    .local v0, "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 65
    .end local v0    # "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method expand()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method getNodeTextForWrappedNode()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    return-object v0
.end method

.method getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChildOfClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)Z"
        }
    .end annotation

    .line 120
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isComment()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isNewline()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method isNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
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

    .line 55
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isSeparator()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isSpaceOrTab()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method isToken(I)Z
    .locals 1
    .param p1, "tokenKind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildTextElement{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
