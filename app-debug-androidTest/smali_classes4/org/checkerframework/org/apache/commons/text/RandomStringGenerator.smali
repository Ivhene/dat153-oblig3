.class public final Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;
.super Ljava/lang/Object;
.source "RandomStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    }
.end annotation


# instance fields
.field private final characterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final maximumCodePoint:I

.field private final minimumCodePoint:I

.field private final random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;


# direct methods
.method private constructor <init>(IILjava/util/Set;Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;Ljava/util/List;)V
    .locals 0
    .param p1, "minimumCodePoint"    # I
    .param p2, "maximumCodePoint"    # I
    .param p4, "random"    # Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;",
            ">;",
            "Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p3, "inclusivePredicates":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;>;"
    .local p5, "characterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    .line 103
    iput p2, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    .line 104
    iput-object p3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    .line 105
    iput-object p4, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    .line 106
    iput-object p5, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(IILjava/util/Set;Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/Set;
    .param p4, "x3"    # Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$1;

    .line 59
    invoke-direct/range {p0 .. p5}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;Ljava/util/List;)V

    return-void
.end method

.method private generateRandomNumber(II)I
    .locals 2
    .param p1, "minInclusive"    # I
    .param p2, "maxInclusive"    # I

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    if-eqz v0, :cond_0

    .line 121
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    .line 123
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    return v0
.end method

.method private generateRandomNumber(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .line 134
    .local p1, "characterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    .local v0, "listSize":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1, v0}, Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    return v1

    .line 138
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public generate(I)Ljava/lang/String;
    .locals 8
    .param p1, "length"    # I

    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string v0, ""

    return-object v0

    .line 168
    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Length %d is smaller than zero."

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    int-to-long v1, p1

    .line 175
    .local v1, "remaining":J
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->generateRandomNumber(Ljava/util/List;)I

    move-result v3

    .local v3, "codePoint":I
    goto :goto_1

    .line 178
    .end local v3    # "codePoint":I
    :cond_3
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result v3

    .line 180
    .restart local v3    # "codePoint":I
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 188
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    if-eqz v4, :cond_6

    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, "matchedFilter":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_2

    .line 184
    .end local v5    # "matchedFilter":Z
    :sswitch_0
    goto :goto_4

    .line 190
    .restart local v5    # "matchedFilter":Z
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;

    .line 191
    .local v6, "predicate":Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;
    invoke-interface {v6, v3}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;->test(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 192
    const/4 v5, 0x1

    .line 193
    goto :goto_3

    .line 195
    .end local v6    # "predicate":Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;
    :cond_4
    goto :goto_2

    .line 196
    :cond_5
    :goto_3
    if-nez v5, :cond_6

    .line 197
    goto :goto_4

    .line 201
    .end local v5    # "matchedFilter":Z
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 202
    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    .line 204
    .end local v3    # "codePoint":I
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public generate(II)Ljava/lang/String;
    .locals 6
    .param p1, "minLengthInclusive"    # I
    .param p2, "maxLengthInclusive"    # I

    .line 224
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Minimum length %d is smaller than zero."

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 225
    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 226
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 225
    const-string v2, "Maximum length %d is smaller than minimum length %d."

    invoke-static {v0, v2, v1}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;->generate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
