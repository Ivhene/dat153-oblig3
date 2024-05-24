.class public final enum Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
.super Ljava/lang/Enum;
.source "PrettyPrinterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

.field public static final enum SPACES:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

.field public static final enum TABS:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

.field public static final enum TABS_WITH_SPACE_ALIGN:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    const-string v1, "SPACES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->SPACES:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 48
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    const-string v2, "TABS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->TABS:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 71
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    const-string v3, "TABS_WITH_SPACE_ALIGN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->TABS_WITH_SPACE_ALIGN:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 38
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
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

    .line 38
    const-class v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
    .locals 1

    .line 38
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    return-object v0
.end method
