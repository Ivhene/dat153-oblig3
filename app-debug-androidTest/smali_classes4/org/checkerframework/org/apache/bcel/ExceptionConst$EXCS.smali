.class public final enum Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;
.super Ljava/lang/Enum;
.source "ExceptionConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/ExceptionConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EXCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

.field public static final enum EXCS_ARRAY_EXCEPTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

.field public static final enum EXCS_CLASS_AND_INTERFACE_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

.field public static final enum EXCS_FIELD_AND_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

.field public static final enum EXCS_INTERFACE_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

.field public static final enum EXCS_STRING_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const-string v1, "EXCS_CLASS_AND_INTERFACE_RESOLUTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    .line 85
    new-instance v1, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const-string v2, "EXCS_FIELD_AND_METHOD_RESOLUTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_FIELD_AND_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    .line 86
    new-instance v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const-string v3, "EXCS_INTERFACE_METHOD_RESOLUTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_INTERFACE_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    .line 87
    new-instance v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const-string v4, "EXCS_STRING_RESOLUTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_STRING_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    .line 88
    new-instance v4, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const-string v5, "EXCS_ARRAY_EXCEPTION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_ARRAY_EXCEPTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    .line 83
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->$VALUES:[Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const-class v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;
    .locals 1

    .line 83
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->$VALUES:[Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    return-object v0
.end method
