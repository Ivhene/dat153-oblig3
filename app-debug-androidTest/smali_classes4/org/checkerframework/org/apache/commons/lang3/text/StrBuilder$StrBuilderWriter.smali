.class Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3056
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3057
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3058
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 3064
    return-void
.end method

.method public flush()V
    .locals 0

    .line 3070
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .line 3075
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3076
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 3093
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3094
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3099
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3100
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C

    .line 3081
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3082
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3087
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 3088
    return-void
.end method