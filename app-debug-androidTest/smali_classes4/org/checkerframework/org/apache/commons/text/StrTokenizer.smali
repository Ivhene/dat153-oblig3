.class public Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 92
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->commaMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 93
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 94
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 95
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->trimMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 97
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 99
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 100
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->tabMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 101
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 102
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 103
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->trimMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 104
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 105
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 118
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 118
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 256
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C

    .line 265
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 300
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 301
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 287
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p3, "quote"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 313
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/StrMatcher;)V

    .line 314
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 315
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "input"    # [C

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 118
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 325
    if-nez p1, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 330
    :goto_0
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C

    .line 339
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 340
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 341
    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 374
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>([CC)V

    .line 375
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 376
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Ljava/lang/String;

    .line 350
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 351
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 352
    return-void
.end method

.method public constructor <init>([CLorg/checkerframework/org/apache/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 361
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 362
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 363
    return-void
.end method

.method public constructor <init>([CLorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p3, "quote"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 387
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>([CLorg/checkerframework/org/apache/commons/text/StrMatcher;)V

    .line 388
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 389
    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "tok"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 668
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 669
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    return-void

    .line 672
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    const/4 p2, 0x0

    .line 676
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    return-void
.end method

.method private checkTokenized()V
    .locals 3

    .line 608
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 609
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 613
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 614
    :cond_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 615
    .restart local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 618
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static getCSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 137
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 150
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 163
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 164
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 165
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 178
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 179
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset([C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 180
    return-object v0
.end method

.method private static getTSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 189
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 202
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 213
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 214
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 215
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 226
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 227
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset([C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 228
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3
    .param p1, "srcChars"    # [C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "quoteStart"    # I
    .param p5, "quoteLen"    # I

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 846
    add-int v1, p2, v0

    if-ge v1, p3, :cond_1

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 850
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readNextToken([CIILorg/checkerframework/org/apache/commons/text/StrBuilder;Ljava/util/List;)I
    .locals 10
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 697
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    :goto_0
    if-ge p2, p3, :cond_1

    .line 698
    nop

    .line 699
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    .line 700
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 698
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 701
    .local v0, "removeLen":I
    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_1

    .line 703
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_0

    .line 704
    goto :goto_1

    .line 706
    :cond_0
    add-int/2addr p2, v0

    .line 707
    .end local v0    # "removeLen":I
    goto :goto_0

    .line 710
    :cond_1
    :goto_1
    const-string v0, ""

    if-lt p2, p3, :cond_2

    .line 711
    invoke-direct {p0, p5, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 712
    const/4 v0, -0x1

    return v0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    .line 717
    .local v8, "delimLen":I
    if-lez v8, :cond_3

    .line 718
    invoke-direct {p0, p5, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 719
    add-int v0, p2, v8

    return v0

    .line 723
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 724
    .local v9, "quoteLen":I
    if-lez v9, :cond_4

    .line 725
    add-int v2, p2, v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0

    .line 727
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0
.end method

.method private readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/StrBuilder;Ljava/util/List;II)I
    .locals 18
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p6, "quoteStart"    # I
    .param p7, "quoteLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .line 748
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->clear()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 749
    move/from16 v0, p2

    .line 750
    .local v0, "pos":I
    const/4 v13, 0x0

    if-lez v12, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 751
    .local v1, "quoting":Z
    :goto_0
    const/4 v2, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    .line 753
    .end local v0    # "pos":I
    .end local v1    # "quoting":Z
    .local v5, "trimStart":I
    .local v14, "pos":I
    .local v15, "quoting":Z
    :goto_1
    if-ge v14, v9, :cond_8

    .line 757
    if-eqz v15, :cond_3

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .local v16, "quoting":Z
    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    add-int v2, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {v10, v7, v14, v12}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 768
    mul-int/lit8 v0, v12, 0x2

    add-int/2addr v14, v0

    .line 769
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v5

    .line 770
    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    move/from16 v15, v16

    goto :goto_1

    .line 774
    .end local v5    # "trimStart":I
    .restart local v15    # "trimStart":I
    :cond_1
    const/4 v0, 0x0

    .line 775
    .end local v16    # "quoting":Z
    .local v0, "quoting":Z
    add-int/2addr v14, v12

    .line 776
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 780
    .end local v0    # "quoting":Z
    .restart local v16    # "quoting":Z
    :cond_2
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "pos":I
    .local v0, "pos":I
    aget-char v1, v7, v14

    invoke-virtual {v10, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 781
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v5

    move v14, v0

    move/from16 v15, v16

    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    goto :goto_1

    .line 787
    .end local v0    # "pos":I
    .end local v16    # "quoting":Z
    .restart local v14    # "pos":I
    .local v15, "quoting":Z
    :cond_3
    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .restart local v16    # "quoting":Z
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    .line 788
    .local v17, "delimLen":I
    if-lez v17, :cond_4

    .line 790
    invoke-virtual {v10, v13, v15}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 791
    add-int v0, v14, v17

    return v0

    .line 795
    :cond_4
    if-lez v12, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 796
    const/4 v0, 0x1

    .line 797
    .end local v16    # "quoting":Z
    .local v0, "quoting":Z
    add-int/2addr v14, v12

    .line 798
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 802
    .end local v0    # "quoting":Z
    .restart local v16    # "quoting":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    .line 803
    .local v0, "ignoredLen":I
    if-lez v0, :cond_6

    .line 804
    add-int/2addr v14, v0

    .line 805
    move v5, v15

    move/from16 v15, v16

    goto/16 :goto_1

    .line 811
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 812
    .local v1, "trimmedLen":I
    if-lez v1, :cond_7

    .line 813
    invoke-virtual {v10, v7, v14, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 814
    add-int/2addr v14, v1

    .line 815
    move v5, v15

    move/from16 v15, v16

    goto/16 :goto_1

    .line 819
    :cond_7
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "pos":I
    .local v2, "pos":I
    aget-char v3, v7, v14

    invoke-virtual {v10, v3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 820
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v5

    .line 821
    .end local v0    # "ignoredLen":I
    .end local v1    # "trimmedLen":I
    .end local v15    # "trimStart":I
    .end local v17    # "delimLen":I
    .restart local v5    # "trimStart":I
    move v14, v2

    move/from16 v15, v16

    goto/16 :goto_1

    .line 825
    .end local v2    # "pos":I
    .end local v16    # "quoting":Z
    .restart local v14    # "pos":I
    .local v15, "quoting":Z
    :cond_8
    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .restart local v16    # "quoting":Z
    invoke-virtual {v10, v13, v15}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 826
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1090
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method cloneReset()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1105
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 1106
    .local v0, "cloned":Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    iget-object v1, v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 1109
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 1110
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1073
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    return-object v0

    .line 1076
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .line 435
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->checkTokenized()V

    .line 436
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->checkTokenized()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 449
    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 1001
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 510
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->checkTokenized()V

    .line 511
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 545
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->checkTokenized()V

    .line 546
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 522
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 525
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 535
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .line 411
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 414
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .line 556
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 559
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 569
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .line 423
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenPos:I

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 478
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 480
    :goto_0
    return-object p0
.end method

.method public reset([C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "input"    # [C

    .line 492
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    .line 493
    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 496
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->chars:[C

    .line 498
    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # C

    .line 888
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 873
    if-nez p1, :cond_0

    .line 874
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    goto :goto_0

    .line 876
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 878
    :goto_0
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    .line 898
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 0
    .param p1, "emptyAsNull"    # Z

    .line 1039
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    .line 1040
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 0
    .param p1, "ignoreEmptyTokens"    # Z

    .line 1062
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 1063
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "ignored"    # C

    .line 986
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 0
    .param p1, "ignored"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 970
    if-eqz p1, :cond_0

    .line 971
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 973
    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1
    .param p1, "quote"    # C

    .line 942
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 0
    .param p1, "quote"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 926
    if-eqz p1, :cond_0

    .line 927
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 929
    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 0
    .param p1, "trimmer"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1017
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 399
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->checkTokenized()V

    .line 400
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1121
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1122
    const-string v0, "StrTokenizer[not tokenized yet]"

    return-object v0

    .line 1124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 8
    .param p1, "srcChars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 641
    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    new-instance v4, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>()V

    .line 645
    .local v4, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 646
    .local v6, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p2

    move v7, v0

    .line 649
    .local v7, "pos":I
    :cond_1
    :goto_0
    if-ltz v7, :cond_2

    if-ge v7, p3, :cond_2

    .line 651
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->readNextToken([CIILorg/checkerframework/org/apache/commons/text/StrBuilder;Ljava/util/List;)I

    move-result v7

    .line 654
    if-lt v7, p3, :cond_1

    .line 655
    const-string v0, ""

    invoke-direct {p0, v6, v0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    return-object v6

    .line 642
    .end local v4    # "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .end local v6    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pos":I
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
