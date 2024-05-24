.class public Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

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


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 99
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->commaMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 100
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 101
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 102
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->trimMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 104
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 106
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 107
    sget-object v2, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->tabMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 108
    sget-object v2, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 109
    sget-object v2, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 110
    sget-object v2, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->trimMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 111
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 112
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 125
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 127
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 129
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 125
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 127
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 129
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 264
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C

    .line 275
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 317
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;C)V

    .line 318
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 301
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p3, "quote"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V

    .line 334
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 335
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "input"    # [C

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 125
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 127
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 129
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 350
    :goto_0
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C

    .line 361
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 362
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 363
    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 403
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>([CC)V

    .line 404
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 405
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Ljava/lang/String;

    .line 374
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 375
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 376
    return-void
.end method

.method public constructor <init>([CLorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 387
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 388
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 389
    return-void
.end method

.method public constructor <init>([CLorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p3, "quote"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>([CLorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V

    .line 420
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 421
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

    .line 710
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 711
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    return-void

    .line 714
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    const/4 p2, 0x0

    .line 718
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method private checkTokenized()V
    .locals 3

    .line 647
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 651
    .local v0, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    .line 652
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 653
    :cond_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 654
    .restart local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    .line 657
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static getCSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 144
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 157
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 170
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 171
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 172
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 185
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 186
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset([C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 187
    return-object v0
.end method

.method private static getTSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 196
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 208
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 220
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 221
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 222
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 234
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 235
    .local v0, "tok":Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset([C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 236
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3
    .param p1, "srcChars"    # [C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "quoteStart"    # I
    .param p5, "quoteLen"    # I

    .line 894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 895
    add-int v1, p2, v0

    if-ge v1, p3, :cond_1

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 894
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 899
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readNextToken([CIILorg/checkerframework/org/apache/commons/text/TextStringBuilder;Ljava/util/List;)I
    .locals 10
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 741
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    :goto_0
    if-ge p2, p3, :cond_1

    .line 742
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    .line 743
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    .line 742
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 744
    .local v0, "removeLen":I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_0

    .line 746
    goto :goto_1

    .line 748
    :cond_0
    add-int/2addr p2, v0

    .line 749
    .end local v0    # "removeLen":I
    goto :goto_0

    .line 752
    :cond_1
    :goto_1
    const-string v0, ""

    if-lt p2, p3, :cond_2

    .line 753
    invoke-direct {p0, p5, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 754
    const/4 v0, -0x1

    return v0

    .line 758
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v8

    .line 759
    .local v8, "delimLen":I
    if-lez v8, :cond_3

    .line 760
    invoke-direct {p0, p5, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 761
    add-int v0, p2, v8

    return v0

    .line 765
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p2, p3}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v9

    .line 766
    .local v9, "quoteLen":I
    if-lez v9, :cond_4

    .line 767
    add-int v2, p2, v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I

    move-result v0

    return v0

    .line 769
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I

    move-result v0

    return v0
.end method

.method private readWithQuotes([CIILorg/checkerframework/org/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I
    .locals 18
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p6, "quoteStart"    # I
    .param p7, "quoteLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .line 796
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->clear()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 797
    move/from16 v0, p2

    .line 798
    .local v0, "pos":I
    const/4 v13, 0x0

    if-lez v12, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 799
    .local v1, "quoting":Z
    :goto_0
    const/4 v2, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    .line 801
    .end local v0    # "pos":I
    .end local v1    # "quoting":Z
    .local v5, "trimStart":I
    .local v14, "pos":I
    .local v15, "quoting":Z
    :goto_1
    if-ge v14, v9, :cond_8

    .line 805
    if-eqz v15, :cond_3

    .line 812
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

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    add-int v2, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v10, v7, v14, v12}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 816
    mul-int/lit8 v0, v12, 0x2

    add-int/2addr v14, v0

    .line 817
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v5

    .line 818
    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    move/from16 v15, v16

    goto :goto_1

    .line 822
    .end local v5    # "trimStart":I
    .restart local v15    # "trimStart":I
    :cond_1
    const/4 v0, 0x0

    .line 823
    .end local v16    # "quoting":Z
    .local v0, "quoting":Z
    add-int/2addr v14, v12

    .line 824
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 828
    .end local v0    # "quoting":Z
    .restart local v16    # "quoting":Z
    :cond_2
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "pos":I
    .local v0, "pos":I
    aget-char v1, v7, v14

    invoke-virtual {v10, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 829
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v5

    move v14, v0

    move/from16 v15, v16

    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    goto :goto_1

    .line 835
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
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v17

    .line 836
    .local v17, "delimLen":I
    if-lez v17, :cond_4

    .line 838
    invoke-virtual {v10, v13, v15}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 839
    add-int v0, v14, v17

    return v0

    .line 843
    :cond_4
    if-lez v12, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 844
    const/4 v0, 0x1

    .line 845
    .end local v16    # "quoting":Z
    .local v0, "quoting":Z
    add-int/2addr v14, v12

    .line 846
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 850
    .end local v0    # "quoting":Z
    .restart local v16    # "quoting":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    .line 851
    .local v0, "ignoredLen":I
    if-lez v0, :cond_6

    .line 852
    add-int/2addr v14, v0

    .line 853
    move v5, v15

    move/from16 v15, v16

    goto/16 :goto_1

    .line 859
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, v7, v14, v8, v9}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    .line 860
    .local v1, "trimmedLen":I
    if-lez v1, :cond_7

    .line 861
    invoke-virtual {v10, v7, v14, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 862
    add-int/2addr v14, v1

    .line 863
    move v5, v15

    move/from16 v15, v16

    goto/16 :goto_1

    .line 867
    :cond_7
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "pos":I
    .local v2, "pos":I
    aget-char v3, v7, v14

    invoke-virtual {v10, v3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 868
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v5

    .line 869
    .end local v0    # "ignoredLen":I
    .end local v1    # "trimmedLen":I
    .end local v15    # "trimStart":I
    .end local v17    # "delimLen":I
    .restart local v5    # "trimStart":I
    move v14, v2

    move/from16 v15, v16

    goto/16 :goto_1

    .line 873
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
    invoke-virtual {v10, v13, v15}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 874
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
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

    .line 1152
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 1153
    .local v0, "cloned":Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    iget-object v1, v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 1156
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 1157
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1120
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    return-object v0

    .line 1123
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 910
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1007
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 964
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .line 466
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 467
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

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

    .line 476
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 480
    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1050
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 541
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 542
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

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

    .line 577
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 578
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

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

    .line 1076
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .line 1098
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 554
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 567
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .line 442
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 445
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .line 588
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 591
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 601
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .line 454
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenPos:I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 506
    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 511
    :goto_0
    return-object p0
.end method

.method public reset([C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "input"    # [C

    .line 523
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->reset()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    .line 524
    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    .line 527
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->chars:[C

    .line 529
    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 625
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "delim"    # C

    .line 939
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "delim"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 923
    if-nez p1, :cond_0

    .line 924
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    goto :goto_0

    .line 926
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 928
    :goto_0
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    .line 950
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 0
    .param p1, "emptyAsNull"    # Z

    .line 1087
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    .line 1088
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 0
    .param p1, "ignoreEmptyTokens"    # Z

    .line 1109
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    .line 1110
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "ignored"    # C

    .line 1036
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 0
    .param p1, "ignored"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1023
    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1
    .param p1, "quote"    # C

    .line 993
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 0
    .param p1, "quote"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 977
    if-eqz p1, :cond_0

    .line 978
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 980
    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 0
    .param p1, "trimmer"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1066
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 431
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 432
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1168
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1169
    const-string v0, "StringTokenizer[not tokenized yet]"

    return-object v0

    .line 1171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getTokenList()Ljava/util/List;

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

    .line 681
    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    new-instance v4, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>()V

    .line 685
    .local v4, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 686
    .local v6, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p2

    move v7, v0

    .line 689
    .local v7, "pos":I
    :cond_1
    :goto_0
    if-ltz v7, :cond_2

    if-ge v7, p3, :cond_2

    .line 691
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->readNextToken([CIILorg/checkerframework/org/apache/commons/text/TextStringBuilder;Ljava/util/List;)I

    move-result v7

    .line 694
    if-lt v7, p3, :cond_1

    .line 695
    const-string v0, ""

    invoke-direct {p0, v6, v0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    return-object v6

    .line 682
    .end local v4    # "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .end local v6    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pos":I
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
