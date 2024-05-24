.class final enum Lorg/checkerframework/com/google/common/base/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/base/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

.field public static final enum DONE:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

.field public static final enum FAILED:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

.field public static final enum NOT_READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

.field public static final enum READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 37
    new-instance v1, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    const-string v2, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->NOT_READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 38
    new-instance v2, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    const-string v3, "DONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->DONE:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 39
    new-instance v3, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->FAILED:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 35
    filled-new-array {v0, v1, v2, v3}, [Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->$VALUES:[Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/AbstractIterator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/base/AbstractIterator$State;
    .locals 1

    .line 35
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->$VALUES:[Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    return-object v0
.end method
