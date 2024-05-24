.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

.field private final readOnly:Z

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)V
    .locals 2
    .param p2, "parameterDescription"    # Lnet/bytebuddy/description/method/ParameterDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ")V"
        }
    .end annotation

    .line 1736
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    .line 1737
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .param p2, "parameterDescription"    # Lnet/bytebuddy/description/method/ParameterDescription;
    .param p3, "readOnly"    # Z
    .param p4, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Z",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    .line 1747
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1748
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->annotationType:Ljava/lang/Class;

    .line 1749
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    .line 1750
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->readOnly:Z

    .line 1751
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 1752
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->annotationType:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->annotationType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1758
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->readOnly:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 5
    .param p1, "target"    # Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .param p3, "adviceType"    # Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 1767
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory<TT;>;"
    .local p2, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<TT;>;"
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->readOnly:Z

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/description/method/ParameterDescription;)V

    return-object v0
.end method
