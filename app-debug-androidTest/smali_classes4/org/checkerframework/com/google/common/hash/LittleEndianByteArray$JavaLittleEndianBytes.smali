.class abstract enum Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

.field public static final enum INSTANCE:Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 207
    new-instance v0, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    aput-object v0, v1, v2

    sput-object v1, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/hash/LittleEndianByteArray$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$1;

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 206
    const-class v0, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    .line 206
    sget-object v0, Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method
