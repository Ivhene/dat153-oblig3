.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
.super Ljava/lang/Object;
.source "CsmToken.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

.field private final tokenType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "tokenType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 55
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 56
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isSpaceOrTab(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v0, " "

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "content"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 68
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;)V
    .locals 0
    .param p1, "tokenType"    # I
    .param p2, "tokenContentCalculator"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "tokenContentCalculator"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 73
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 97
    .local v2, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    iget v4, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    if-eq v3, v4, :cond_2

    return v1

    .line 98
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    if-eqz v3, :cond_4

    :goto_0
    return v1

    .line 99
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 93
    .end local v2    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_7
    :goto_2
    return v1
.end method

.method public getContent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
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

    .line 47
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;->calculate(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 104
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 105
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 106
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenContentCalculator:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    .line 107
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isNewLine()Z
    .locals 1

    .line 115
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .line 111
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 78
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 83
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
