.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
.super Ljava/lang/Object;
.source "Added.java"

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 13
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

    .line 22
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 23
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    .line 27
    .local v0, "added":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 23
    .end local v0    # "added":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdded()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isIndent()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isUnindent()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTextElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 4

    .line 55
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    .line 57
    :cond_0
    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;->element:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
