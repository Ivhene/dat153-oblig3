.class abstract Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.super Ljava/lang/Object;
.source "AbstractStringLookup.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field protected static final SPLIT_CH:C = ':'

.field protected static final SPLIT_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;->SPLIT_STR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected substringAfter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ch"    # C

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 54
    .local v0, "indexOf":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method protected substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "indexOf":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method protected substringAfterLast(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ch"    # C

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 68
    .local v0, "indexOf":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method
