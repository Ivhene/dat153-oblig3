.class public final Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field private final translator:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V
    .locals 1
    .param p1, "translator"    # Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->sb:Ljava/lang/StringBuilder;

    .line 458
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->translator:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    .param p2, "x1"    # Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$1;

    .line 439
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;-><init>(Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    return-object p0
.end method

.method public escape(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->translator:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
