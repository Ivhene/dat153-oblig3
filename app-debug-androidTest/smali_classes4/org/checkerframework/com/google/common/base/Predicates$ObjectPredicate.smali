.class abstract enum Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ObjectPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;",
        ">;",
        "Lorg/checkerframework/com/google/common/base/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

.field public static final enum ALWAYS_FALSE:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

.field public static final enum ALWAYS_TRUE:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

.field public static final enum IS_NULL:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

.field public static final enum NOT_NULL:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 252
    new-instance v0, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$1;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    .line 264
    new-instance v1, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$2;

    const-string v3, "ALWAYS_FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    .line 276
    new-instance v3, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$3;

    const-string v5, "IS_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    .line 288
    new-instance v5, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$4;

    const-string v7, "NOT_NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    .line 250
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->$VALUES:[Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/base/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/base/Predicates$1;

    .line 250
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 250
    const-class v0, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;
    .locals 1

    .line 250
    sget-object v0, Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->$VALUES:[Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/base/Predicates$ObjectPredicate;

    return-object v0
.end method


# virtual methods
.method withNarrowedType()Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 302
    return-object p0
.end method
