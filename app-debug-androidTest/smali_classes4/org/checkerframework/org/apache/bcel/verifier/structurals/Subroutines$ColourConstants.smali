.class final enum Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;
.super Ljava/lang/Enum;
.source "Subroutines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ColourConstants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

.field public static final enum BLACK:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

.field public static final enum GRAY:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

.field public static final enum WHITE:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 357
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->WHITE:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    .line 358
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    const-string v2, "GRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->GRAY:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    .line 359
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    const-string v3, "BLACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->BLACK:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    .line 356
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->$VALUES:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 356
    const-class v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;
    .locals 1

    .line 356
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->$VALUES:[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    return-object v0
.end method
