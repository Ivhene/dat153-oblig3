.class public final enum Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;
.super Ljava/lang/Enum;
.source "LoopTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoopStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum FAST_ENUMERATION:Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum JAVA_ITERATOR:Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v1, "JAVA_ITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;->JAVA_ITERATOR:Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 50
    new-instance v1, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v2, "FAST_ENUMERATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;->FAST_ENUMERATION:Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 36
    filled-new-array {v0, v1}, [Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;->$VALUES:[Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 1

    .line 36
    sget-object v0, Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;->$VALUES:[Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method
