.class public Lorg/checkerframework/com/github/javaparser/JavaToken;
.super Ljava/lang/Object;
.source "JavaToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;,
        Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
    }
.end annotation


# static fields
.field public static final INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;


# instance fields
.field private kind:I

.field private nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field private previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field private range:Lorg/checkerframework/com/github/javaparser/Range;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 50
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "INVALID"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>(Lorg/checkerframework/com/github/javaparser/Range;ILjava/lang/String;Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 47
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 111
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 112
    .local v0, "content":Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v0, " "

    .line 120
    :cond_2
    :goto_0
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    .line 121
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "kind"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kind",
            "text"
        }
    .end annotation

    .line 54
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>(Lorg/checkerframework/com/github/javaparser/Range;ILjava/lang/String;Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Range;ILjava/lang/String;Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/Range;
    .param p2, "kind"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "previousToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p5, "nextToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "kind",
            "text",
            "previousToken",
            "nextToken"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 47
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 125
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->range:Lorg/checkerframework/com/github/javaparser/Range;

    .line 127
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    .line 128
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 130
    iput-object p5, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 131
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/github/javaparser/Token;Ljava/util/List;)V
    .locals 7
    .param p1, "token"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "tokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/Token;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 47
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 86
    iget v1, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginLine:I

    iget v2, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->endLine:I

    iget v4, p1, Lorg/checkerframework/com/github/javaparser/Token;->endColumn:I

    invoke-static {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/Range;->range(IIII)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v1

    .line 87
    .local v1, "range":Lorg/checkerframework/com/github/javaparser/Range;
    iget-object v2, p1, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 88
    .local v2, "text":Ljava/lang/String;
    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    const/16 v4, 0x91

    if-ne v3, v4, :cond_0

    .line 89
    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginLine:I

    iget v4, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    iget v5, p1, Lorg/checkerframework/com/github/javaparser/Token;->endLine:I

    iget v6, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    invoke-static {v3, v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/Range;->range(IIII)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v1

    .line 90
    const-string v2, ">"

    goto :goto_0

    .line 91
    :cond_0
    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    const/16 v4, 0x90

    if-ne v3, v4, :cond_1

    .line 92
    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginLine:I

    iget v4, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    iget v5, p1, Lorg/checkerframework/com/github/javaparser/Token;->endLine:I

    iget v6, p1, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/Range;->range(IIII)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v1

    .line 93
    const-string v2, ">>"

    .line 95
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->range:Lorg/checkerframework/com/github/javaparser/Range;

    .line 96
    iget v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    .line 97
    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 98
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 100
    .local v0, "previousToken":Lorg/checkerframework/com/github/javaparser/JavaToken;
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 101
    iput-object p0, v0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 102
    .end local v0    # "previousToken":Lorg/checkerframework/com/github/javaparser/JavaToken;
    goto :goto_1

    .line 103
    :cond_2
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 105
    :goto_1
    return-void
.end method

.method static synthetic lambda$deleteToken$2(Ljava/util/Optional;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p0, "nextToken"    # Ljava/util/Optional;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "nextToken",
            "p"
        }
    .end annotation

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method

.method static synthetic lambda$deleteToken$3(Ljava/util/Optional;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p0, "previousToken"    # Ljava/util/Optional;
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "previousToken",
            "n"
        }
    .end annotation

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method

.method static synthetic lambda$insert$0(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0
    .param p0, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "p"
        }
    .end annotation

    .line 725
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 726
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 727
    return-void
.end method

.method static synthetic lambda$insertAfter$1(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0
    .param p0, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "n"
        }
    .end annotation

    .line 738
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 739
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 740
    return-void
.end method

.method static synthetic lambda$replaceToken$4(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0
    .param p0, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "p"
        }
    .end annotation

    .line 761
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 762
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 763
    return-void
.end method

.method static synthetic lambda$replaceToken$5(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0
    .param p0, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "n"
        }
    .end annotation

    .line 765
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 766
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 767
    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-object v0
.end method

.method public deleteToken()V
    .locals 3

    .line 749
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    .line 750
    .local v0, "nextToken":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v1

    .line 751
    .local v1, "previousToken":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda3;-><init>(Ljava/util/Optional;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 752
    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda4;-><init>(Ljava/util/Optional;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 753
    return-void
.end method

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

    .line 801
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 802
    return v0

    .line 803
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 806
    .local v2, "javaToken":Lorg/checkerframework/com/github/javaparser/JavaToken;
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    iget v4, v2, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    if-eq v3, v4, :cond_2

    .line 807
    return v1

    .line 808
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 809
    return v1

    .line 810
    :cond_3
    return v0

    .line 804
    .end local v2    # "javaToken":Lorg/checkerframework/com/github/javaparser/JavaToken;
    :cond_4
    :goto_0
    return v1
.end method

.method public findFirstToken()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 2

    .line 785
    move-object v0, p0

    .line 786
    .local v0, "current":Lorg/checkerframework/com/github/javaparser/JavaToken;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    goto :goto_0

    .line 789
    :cond_0
    return-object v0
.end method

.method public findLastToken()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 2

    .line 774
    move-object v0, p0

    .line 775
    .local v0, "current":Lorg/checkerframework/com/github/javaparser/JavaToken;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    goto :goto_0

    .line 778
    :cond_0
    return-object v0
.end method

.method public getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
    .locals 1

    .line 716
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    return v0
.end method

.method public getNextToken()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousToken()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->range:Lorg/checkerframework/com/github/javaparser/Range;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 794
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    .line 795
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 796
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public insert(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 2
    .param p1, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    .line 723
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 728
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 729
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 730
    return-void
.end method

.method public insertAfter(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 2
    .param p1, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    .line 736
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 741
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->nextToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 742
    iput-object p0, p1, Lorg/checkerframework/com/github/javaparser/JavaToken;->previousToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 743
    return-void
.end method

.method public invalid()Z
    .locals 1

    .line 193
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replaceToken(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 2
    .param p1, "newToken"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    .line 759
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 764
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 768
    return-void
.end method

.method setKind(I)V
    .locals 0
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 142
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->kind:I

    .line 143
    return-void
.end method

.method public setRange(Lorg/checkerframework/com/github/javaparser/Range;)V
    .locals 0
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->range:Lorg/checkerframework/com/github/javaparser/Range;

    .line 159
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 178
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\\r\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "(?)-(?)"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\"%s\"   <%s>   %s"

    invoke-static {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTokenRange()Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 3

    .line 173
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->findFirstToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->findLastToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0
.end method

.method public valid()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->invalid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
