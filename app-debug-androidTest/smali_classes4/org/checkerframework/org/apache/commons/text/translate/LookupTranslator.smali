.class public Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;
.super Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
.source "LookupTranslator.java"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixSet:Ljava/util/BitSet;

.field private final shortest:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "lookupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    .line 54
    if-eqz p1, :cond_3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->lookupMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->prefixSet:Ljava/util/BitSet;

    .line 59
    const v0, 0x7fffffff

    .line 60
    .local v0, "currentShortest":I
    const/4 v1, 0x0

    .line 62
    .local v1, "currentLongest":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->lookupMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->prefixSet:Ljava/util/BitSet;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 66
    .local v4, "sz":I
    if-ge v4, v0, :cond_0

    .line 67
    move v0, v4

    .line 69
    :cond_0
    if-le v4, v1, :cond_1

    .line 70
    move v1, v4

    .line 72
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v4    # "sz":I
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->shortest:I

    .line 74
    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->longest:I

    .line 75
    return-void

    .line 55
    .end local v0    # "currentShortest":I
    .end local v1    # "currentLongest":I
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "lookupMap cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->prefixSet:Ljava/util/BitSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->longest:I

    .line 85
    .local v0, "max":I
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->longest:I

    add-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v0, v1, p2

    .line 89
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->shortest:I

    if-lt v1, v2, :cond_2

    .line 90
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "subSeq":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;->lookupMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    return v1

    .line 89
    .end local v2    # "subSeq":Ljava/lang/CharSequence;
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 99
    .end local v0    # "max":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
