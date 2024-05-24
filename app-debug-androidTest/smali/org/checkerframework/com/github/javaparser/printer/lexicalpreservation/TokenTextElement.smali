.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
.super Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
.source "TokenTextElement.java"


# instance fields
.field private final token:Lorg/checkerframework/com/github/javaparser/JavaToken;


# direct methods
.method constructor <init>(I)V
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

    .line 43
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    .line 44
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1
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

    .line 39
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0
    .param p1, "token"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 36
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

    .line 66
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 71
    .local v0, "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 67
    .end local v0    # "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method expand()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getText()Ljava/lang/String;

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

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method getTokenKind()I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->hashCode()I

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

    .line 121
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isComment()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isComment()Z

    move-result v0

    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isIdentifier()Z

    move-result v0

    return v0
.end method

.method public isNewline()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v0

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

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->valueOf(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isSeparator()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isSeparator()Z

    move-result v0

    return v0
.end method

.method public isSpaceOrTab()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespaceButNotEndOfLine()Z

    move-result v0

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

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
