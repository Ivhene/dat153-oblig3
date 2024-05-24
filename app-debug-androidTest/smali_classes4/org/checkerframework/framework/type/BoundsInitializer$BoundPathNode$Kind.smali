.class final enum Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;
.super Ljava/lang/Enum;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum ArrayComponent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum Enclosing:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum Extends:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum Intersection:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum LowerBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum Super:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum TypeArg:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum Union:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public static final enum UpperBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 939
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v1, "Extends"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Extends:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 941
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v2, "Super"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Super:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 943
    new-instance v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v3, "UpperBound"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->UpperBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 945
    new-instance v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v4, "LowerBound"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->LowerBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 947
    new-instance v4, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v5, "ArrayComponent"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->ArrayComponent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 949
    new-instance v5, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v6, "Intersection"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Intersection:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 951
    new-instance v6, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v7, "Union"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Union:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 953
    new-instance v7, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v8, "TypeArg"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->TypeArg:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 955
    new-instance v8, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    const-string v9, "Enclosing"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Enclosing:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 937
    filled-new-array/range {v0 .. v8}, [Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->$VALUES:[Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 937
    const-class v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;
    .locals 1

    .line 937
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->$VALUES:[Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    return-object v0
.end method
