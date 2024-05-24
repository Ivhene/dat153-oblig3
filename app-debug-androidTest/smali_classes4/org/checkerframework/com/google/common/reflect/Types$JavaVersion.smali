.class abstract enum Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "JavaVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

.field static final CURRENT:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA6:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA7:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA8:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA9:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 540
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$1;

    const-string v1, "JAVA6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->JAVA6:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 558
    new-instance v1, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$2;

    const-string v3, "JAVA7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->JAVA7:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 573
    new-instance v3, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$3;

    const-string v5, "JAVA8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->JAVA8:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 603
    new-instance v5, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$4;

    const-string v7, "JAVA9"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->JAVA9:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 539
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->$VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 628
    const-class v2, Ljava/lang/reflect/AnnotatedElement;

    const-class v4, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$5;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$5;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$5;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v1, "java.util.Map.java.util.Map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    sput-object v3, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->CURRENT:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    goto :goto_0

    .line 634
    :cond_0
    sput-object v5, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->CURRENT:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    goto :goto_0

    .line 636
    :cond_1
    new-instance v2, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$6;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$6;-><init>()V

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion$6;->capture()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 637
    sput-object v1, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->CURRENT:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    goto :goto_0

    .line 639
    :cond_2
    sput-object v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->CURRENT:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    .line 641
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/reflect/Types$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/reflect/Types$1;

    .line 539
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 539
    const-class v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;
    .locals 1

    .line 539
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->$VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    return-object v0
.end method


# virtual methods
.method jdkTypeDuplicatesOwnerName()Z
    .locals 1

    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method abstract newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 656
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method final usedInGenericType([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 5
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 648
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 649
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Ljava/lang/reflect/Type;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 650
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 649
    .end local v3    # "type":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method
