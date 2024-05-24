.class public final enum Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
.super Ljava/lang/Enum;
.source "JavadocInlineTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum CODE:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum DOC_ROOT:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum INHERIT_DOC:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum LINK:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum LINKPLAIN:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum LITERAL:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum SYSTEM_PROPERTY:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum UNKNOWN:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

.field public static final enum VALUE:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;


# instance fields
.field private keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v1, "CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->CODE:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 54
    new-instance v1, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v2, "DOC_ROOT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->DOC_ROOT:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 55
    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v3, "INHERIT_DOC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->INHERIT_DOC:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 56
    new-instance v3, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v4, "LINK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->LINK:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 57
    new-instance v4, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v5, "LINKPLAIN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->LINKPLAIN:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 58
    new-instance v5, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v6, "LITERAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->LITERAL:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 59
    new-instance v6, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v7, "VALUE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->VALUE:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 60
    new-instance v7, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v8, "SYSTEM_PROPERTY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->SYSTEM_PROPERTY:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 61
    new-instance v8, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    const-string v9, "UNKNOWN"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->UNKNOWN:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 52
    filled-new-array/range {v0 .. v8}, [Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->$VALUES:[Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->screamingToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->keyword:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static fromName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    .line 70
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->values()[Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    .local v3, "t":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->keyword:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    return-object v3

    .line 70
    .end local v3    # "t":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->UNKNOWN:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 52
    const-class v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->$VALUES:[Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    return-object v0
.end method
