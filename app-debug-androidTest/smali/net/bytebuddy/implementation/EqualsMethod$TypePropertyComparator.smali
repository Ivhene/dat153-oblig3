.class public abstract enum Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;
.super Ljava/lang/Enum;
.source "EqualsMethod.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TypePropertyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

.field public static final enum FOR_ENUMERATION_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

.field public static final enum FOR_PRIMITIVE_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

.field public static final enum FOR_PRIMITIVE_WRAPPER_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

.field public static final enum FOR_STRING_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 967
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$1;

    const-string v1, "FOR_PRIMITIVE_TYPES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_PRIMITIVE_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    .line 977
    new-instance v1, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$2;

    const-string v3, "FOR_ENUMERATION_TYPES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_ENUMERATION_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    .line 987
    new-instance v3, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$3;

    const-string v5, "FOR_STRING_TYPES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_STRING_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    .line 997
    new-instance v5, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$4;

    const-string v7, "FOR_PRIMITIVE_WRAPPER_TYPES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_PRIMITIVE_WRAPPER_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    .line 962
    const/4 v7, 0x4

    new-array v7, v7, [Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/EqualsMethod$1;

    .line 962
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 962
    const-class v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;
    .locals 1

    .line 962
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 962
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I
    .locals 1
    .param p1, "left"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .param p2, "right"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 1008
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, -0x1

    return v0

    .line 1010
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    const/4 v0, 0x1

    return v0

    .line 1013
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z
.end method
