.class public final enum Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_32:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_64:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum UNKNOWN:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    const-string v1, "BIT_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    .line 47
    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    const-string v2, "BIT_64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    .line 52
    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->UNKNOWN:Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    .line 37
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;
    .locals 1

    .line 37
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method
