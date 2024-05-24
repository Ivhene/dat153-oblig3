.class Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;
.super Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupTranslator"
.end annotation


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "lookup"    # [[Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lookup"
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    .line 243
    const v0, 0x7fffffff

    .line 244
    .local v0, "_shortest":I
    const/4 v1, 0x0

    .line 245
    .local v1, "_longest":I
    if-eqz p1, :cond_2

    .line 246
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 247
    .local v5, "seq":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    aget-object v7, v5, v3

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    aget-object v6, v5, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 250
    .local v6, "sz":I
    if-ge v6, v0, :cond_0

    .line 251
    move v0, v6

    .line 253
    :cond_0
    if-le v6, v1, :cond_1

    .line 254
    move v1, v6

    .line 246
    .end local v5    # "seq":[Ljava/lang/CharSequence;
    .end local v6    # "sz":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    :cond_2
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->shortest:I

    .line 259
    iput v1, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->longest:I

    .line 260
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
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

    .line 268
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->longest:I

    .line 270
    .local v0, "max":I
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->longest:I

    add-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 271
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v0, v1, p2

    .line 274
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->shortest:I

    if-lt v1, v2, :cond_2

    .line 275
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 276
    .local v2, "subSeq":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 280
    return v1

    .line 274
    .end local v2    # "subSeq":Ljava/lang/CharSequence;
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 284
    .end local v0    # "max":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
