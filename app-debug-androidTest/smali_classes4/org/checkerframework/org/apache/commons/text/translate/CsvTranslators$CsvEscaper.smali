.class public Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators$CsvEscaper;
.super Lorg/checkerframework/org/apache/commons/text/translate/SinglePassTranslator;
.source "CsvTranslators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsvEscaper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/SinglePassTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/translate/SinglePassTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result p1

    return p1
.end method

.method translateWhole(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "inputSting":Ljava/lang/String;
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators;->access$000()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    .line 64
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    .line 67
    :goto_0
    return-void
.end method