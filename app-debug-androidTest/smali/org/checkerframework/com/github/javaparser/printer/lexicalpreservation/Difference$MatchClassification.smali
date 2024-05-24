.class final enum Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;
.super Ljava/lang/Enum;
.source "Difference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MatchClassification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

.field public static final enum ALL:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

.field public static final enum ALMOST:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

.field public static final enum NEXT_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

.field public static final enum PREVIOUS_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

.field public static final enum SAME_ONLY:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 797
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->ALL:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    const-string v2, "PREVIOUS_AND_SAME"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->PREVIOUS_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    const-string v3, "NEXT_AND_SAME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->NEXT_AND_SAME:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    const-string v4, "SAME_ONLY"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->SAME_ONLY:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    const-string v5, "ALMOST"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->ALMOST:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    .line 796
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 801
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 802
    iput p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->priority:I

    .line 803
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;
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

    .line 796
    const-class v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;
    .locals 1

    .line 796
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;

    return-object v0
.end method


# virtual methods
.method getPriority()I
    .locals 1

    .line 806
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference$MatchClassification;->priority:I

    return v0
.end method
