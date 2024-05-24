.class Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;
.super Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregateTranslator"
.end annotation


# instance fields
.field private final translators:[Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V
    .locals 1
    .param p1, "translators"    # [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translators"
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    .line 306
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;->translators:[Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    .line 307
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "index",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;->translators:[Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 317
    .local v4, "translator":Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    invoke-virtual {v4, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v5

    .line 318
    .local v5, "consumed":I
    if-eqz v5, :cond_0

    .line 319
    return v5

    .line 316
    .end local v4    # "translator":Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    .end local v5    # "consumed":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_1
    return v2
.end method
