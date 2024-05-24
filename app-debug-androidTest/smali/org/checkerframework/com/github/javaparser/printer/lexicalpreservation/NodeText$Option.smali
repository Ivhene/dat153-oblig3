.class final enum Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;
.super Ljava/lang/Enum;
.source "NodeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

.field public static final enum EXCLUDE_END:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

.field public static final enum EXCLUDE_START:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

.field public static final enum REMOVE_SPACE_IMMEDIATELY_AFTER:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    const-string v1, "REMOVE_SPACE_IMMEDIATELY_AFTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->REMOVE_SPACE_IMMEDIATELY_AFTER:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    .line 42
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    const-string v2, "EXCLUDE_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->EXCLUDE_START:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    .line 43
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    const-string v3, "EXCLUDE_END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->EXCLUDE_END:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    .line 40
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;
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

    .line 40
    const-class v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;
    .locals 1

    .line 40
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$Option;

    return-object v0
.end method
