.class abstract enum Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "KeyPresentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_AFTER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_BEFORE:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 49
    new-instance v0, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$1;

    const-string v1, "ANY_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 57
    new-instance v1, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$2;

    const-string v3, "LAST_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 79
    new-instance v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$3;

    const-string v5, "FIRST_PRESENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 105
    new-instance v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$4;

    const-string v7, "FIRST_AFTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 116
    new-instance v7, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$5;

    const-string v9, "LAST_BEFORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_BEFORE:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 44
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/collect/SortedLists$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/collect/SortedLists$1;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 44
    sget-object v0, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
