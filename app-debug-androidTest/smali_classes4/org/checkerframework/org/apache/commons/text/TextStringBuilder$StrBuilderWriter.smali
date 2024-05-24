.class Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "TextStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3175
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3176
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3177
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 3183
    return-void
.end method

.method public flush()V
    .locals 0

    .line 3189
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .line 3194
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3195
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 3212
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3213
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3218
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3219
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C

    .line 3200
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3201
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3206
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3207
    return-void
.end method
