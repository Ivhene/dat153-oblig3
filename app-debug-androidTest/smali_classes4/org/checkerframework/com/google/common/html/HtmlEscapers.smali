.class public final Lorg/checkerframework/com/google/common/html/HtmlEscapers;
.super Ljava/lang/Object;
.source "HtmlEscapers.java"


# static fields
.field private static final HTML_ESCAPER:Lorg/checkerframework/com/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lorg/checkerframework/com/google/common/escape/Escapers;->builder()Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 60
    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 62
    const/16 v1, 0x27

    const-string v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 64
    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 65
    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->build()Lorg/checkerframework/com/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lorg/checkerframework/com/google/common/escape/Escaper;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlEscaper()Lorg/checkerframework/com/google/common/escape/Escaper;
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/com/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lorg/checkerframework/com/google/common/escape/Escaper;

    return-object v0
.end method
