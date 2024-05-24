.class final enum Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
.super Ljava/lang/Enum;
.source "TargetedElementAnnotationApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TargetClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

.field public static final enum INVALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

.field public static final enum TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

.field public static final enum VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    const-string v1, "TARGETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    .line 35
    new-instance v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    const-string v2, "VALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    .line 36
    new-instance v2, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    const-string v3, "INVALID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->INVALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    .line 33
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->$VALUES:[Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
    .locals 1

    .line 33
    sget-object v0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->$VALUES:[Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    return-object v0
.end method
