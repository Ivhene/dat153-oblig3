.class public final enum Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
.super Ljava/lang/Enum;
.source "PrimitiveType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum BOOLEAN:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum BYTE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum CHAR:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum DOUBLE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum FLOAT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum INT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum LONG:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum SHORT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;


# instance fields
.field private codeRepresentation:Ljava/lang/String;

.field final nameOfBoxedType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 87
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v1, 0x0

    const-string v2, "Boolean"

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->BOOLEAN:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 88
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v2, 0x1

    const-string v3, "Character"

    const-string v4, "CHAR"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->CHAR:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 89
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v3, 0x2

    const-string v4, "Byte"

    const-string v5, "BYTE"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->BYTE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 90
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v4, 0x3

    const-string v5, "Short"

    const-string v6, "SHORT"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->SHORT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 91
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v5, 0x4

    const-string v6, "Integer"

    const-string v7, "INT"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 92
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v6, 0x5

    const-string v7, "Long"

    const-string v8, "LONG"

    invoke-direct {v5, v8, v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->LONG:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 93
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v7, 0x6

    const-string v8, "Float"

    const-string v9, "FLOAT"

    invoke-direct {v6, v9, v7, v8}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->FLOAT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 94
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    const/4 v8, 0x7

    const-string v9, "Double"

    const-string v10, "DOUBLE"

    invoke-direct {v7, v10, v8, v9}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->DOUBLE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 85
    filled-new-array/range {v0 .. v7}, [Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "nameOfBoxedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "nameOfBoxedType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->codeRepresentation:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
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

    .line 85
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .locals 1

    .line 85
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toBoxedType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method
