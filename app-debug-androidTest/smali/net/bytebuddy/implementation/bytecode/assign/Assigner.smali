.class public interface abstract Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
.super Ljava/lang/Object;
.source "Assigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;,
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;,
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field public static final GENERICS_AWARE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 43
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->GENERICS_AWARE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method


# virtual methods
.method public abstract assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
