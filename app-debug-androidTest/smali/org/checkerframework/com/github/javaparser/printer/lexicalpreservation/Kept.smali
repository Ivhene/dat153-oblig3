.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
.super Ljava/lang/Object;
.source "Kept.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;


# instance fields
.field private final element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 15
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

    .line 24
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 25
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    .line 29
    .local v0, "kept":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 25
    .end local v0    # "kept":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getTokenType()I
    .locals 3

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 45
    .local v0, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v1

    return v1

    .line 48
    .end local v0    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kept is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdded()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isChild()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    return v0
.end method

.method public isIndent()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return v0
.end method

.method public isNewLine()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 94
    .local v0, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v1

    return v1

    .line 97
    .end local v0    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitiveType()Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 67
    .local v0, "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    return v1

    .line 70
    .end local v0    # "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isToken()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    return v0
.end method

.method public isUnindent()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 76
    .local v0, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isWhiteSpace()Z

    move-result v1

    return v1

    .line 79
    .end local v0    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteSpaceOrComment()Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 85
    .local v0, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isWhitespaceOrComment(I)Z

    move-result v1

    return v1

    .line 88
    .end local v0    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kept{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
