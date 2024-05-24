.class public Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;
.super Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
.source "AggregateTranslator.java"


# instance fields
.field private final translators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V
    .locals 4
    .param p1, "translators"    # [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 45
    .local v2, "translator":Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    if-eqz v2, :cond_0

    .line 46
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v2    # "translator":Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 60
    .local v1, "translator":Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    invoke-virtual {v1, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v2

    .line 61
    .local v2, "consumed":I
    if-eqz v2, :cond_0

    .line 62
    return v2

    .line 64
    .end local v1    # "translator":Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    .end local v2    # "consumed":I
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
