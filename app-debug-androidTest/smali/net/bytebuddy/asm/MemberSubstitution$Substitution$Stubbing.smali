.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;
.super Ljava/lang/Enum;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
.implements Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stubbing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;",
        ">;",
        "Lnet/bytebuddy/asm/MemberSubstitution$Substitution;",
        "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 844
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    .line 839
    filled-new-array {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 839
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 839
    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;
    .locals 1

    .line 839
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 850
    return-object p0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3
    .param p1, "targetType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "target"    # Lnet/bytebuddy/description/ByteCodeElement;
    .param p3, "parameters"    # Lnet/bytebuddy/description/type/TypeList$Generic;
    .param p4, "result"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p5, "freeOffset"    # I

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 862
    .local v0, "stackManipulations":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 863
    invoke-interface {p3, v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/Removal;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 865
    .end local v1    # "index":I
    :cond_0
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    return-object v1
.end method
