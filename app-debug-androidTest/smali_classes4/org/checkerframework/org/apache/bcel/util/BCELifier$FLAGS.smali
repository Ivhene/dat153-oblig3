.class public final enum Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;
.super Ljava/lang/Enum;
.source "BCELifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/util/BCELifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLAGS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

.field public static final enum CLASS:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

.field public static final enum METHOD:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

.field public static final enum UNKNOWN:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    .line 54
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    const-string v2, "CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->CLASS:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    .line 55
    new-instance v2, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    const-string v3, "METHOD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->METHOD:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    .line 52
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->$VALUES:[Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->$VALUES:[Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    return-object v0
.end method
