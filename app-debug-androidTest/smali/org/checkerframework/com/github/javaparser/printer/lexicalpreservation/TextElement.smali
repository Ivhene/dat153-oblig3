.class public abstract Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
.super Ljava/lang/Object;
.source "TextElement.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract expand()Ljava/lang/String;
.end method

.method abstract getRange()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;"
        }
    .end annotation
.end method

.method public isChild()Z
    .locals 1

    .line 73
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isChildOfClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public abstract isChildOfClass(Ljava/lang/Class;)Z
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
.end method

.method public abstract isComment()Z
.end method

.method final isCommentToken()Z
    .locals 1

    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public abstract isIdentifier()Z
.end method

.method public abstract isNewline()Z
.end method

.method abstract isNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isSeparator()Z
.end method

.method public abstract isSpaceOrTab()Z
.end method

.method abstract isToken(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation
.end method

.method public abstract isWhiteSpace()Z
.end method

.method public final isWhiteSpaceOrComment()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

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

.method synthetic lambda$matchByRange$0$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-TextElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 4
    .param p1, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "textElement"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object v0

    .line 88
    .local v0, "range1":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Range;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object v1

    .line 89
    .local v1, "range2":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Range;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 93
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p1, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method matchByRange()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1

    .line 86
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-object v0
.end method
