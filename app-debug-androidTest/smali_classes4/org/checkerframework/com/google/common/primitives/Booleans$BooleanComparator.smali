.class final enum Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;
.super Ljava/lang/Enum;
.source "Booleans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BooleanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

.field public static final enum FALSE_FIRST:Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

.field public static final enum TRUE_FIRST:Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;


# instance fields
.field private final toString:Ljava/lang/String;

.field private final trueValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    const-string v1, "Booleans.trueFirst()"

    const-string v2, "TRUE_FIRST"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->TRUE_FIRST:Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    .line 51
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    const/4 v2, -0x1

    const-string v3, "Booleans.falseFirst()"

    const-string v5, "FALSE_FIRST"

    invoke-direct {v1, v5, v4, v2, v3}, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->FALSE_FIRST:Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    .line 49
    filled-new-array {v0, v1}, [Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->$VALUES:[Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "trueValue"    # I
    .param p4, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->trueValue:I

    .line 58
    iput-object p4, p0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->toString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;
    .locals 1

    .line 49
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->$VALUES:[Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 3
    .param p1, "a"    # Ljava/lang/Boolean;
    .param p2, "b"    # Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->trueValue:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 64
    .local v0, "aVal":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->trueValue:I

    .line 65
    .local v1, "bVal":I
    :cond_1
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Booleans$BooleanComparator;->toString:Ljava/lang/String;

    return-object v0
.end method
