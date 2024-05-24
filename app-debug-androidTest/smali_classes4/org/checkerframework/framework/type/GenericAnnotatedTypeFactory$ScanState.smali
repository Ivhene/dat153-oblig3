.class public final enum Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;
.super Ljava/lang/Enum;
.source "GenericAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ScanState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

.field public static final enum FINISHED:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

.field public static final enum IN_PROGRESS:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 851
    new-instance v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->IN_PROGRESS:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    .line 853
    new-instance v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    const-string v2, "FINISHED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->FINISHED:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    .line 849
    filled-new-array {v0, v1}, [Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->$VALUES:[Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 849
    const-class v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;
    .locals 1

    .line 849
    sget-object v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->$VALUES:[Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    return-object v0
.end method
