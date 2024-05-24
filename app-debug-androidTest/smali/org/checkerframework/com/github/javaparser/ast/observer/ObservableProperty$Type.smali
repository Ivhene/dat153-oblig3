.class final enum Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;
.super Ljava/lang/Enum;
.source "ObservableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum MULTIPLE_ATTRIBUTE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum MULTIPLE_REFERENCE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum SINGLE_ATTRIBUTE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum SINGLE_REFERENCE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;


# instance fields
.field private multiple:Z

.field private node:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 138
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v1, "SINGLE_ATTRIBUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->SINGLE_ATTRIBUTE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v3, "SINGLE_REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v4}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->SINGLE_REFERENCE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v5, "MULTIPLE_ATTRIBUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->MULTIPLE_ATTRIBUTE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v5, "MULTIPLE_REFERENCE"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4, v4}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->MULTIPLE_REFERENCE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    .line 136
    filled-new-array {v0, v1, v3, v2}, [Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "multiple"    # Z
    .param p4, "node"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "multiple",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-boolean p3, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->multiple:Z

    .line 146
    iput-boolean p4, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->node:Z

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    .line 136
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->node:Z

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    .line 136
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->multiple:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;
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

    .line 136
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;
    .locals 1

    .line 136
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty$Type;

    return-object v0
.end method
