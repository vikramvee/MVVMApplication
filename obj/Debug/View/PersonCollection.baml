   M S B A M L   `   `   `  ����J  FMVVMApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MVVMApplication.ViewMVVMApplication.View  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      =#clr-namespace:MVVMApplication.InfraMVVMApplication.Infra  5      +    %MVVMApplication.View.PersonCollection   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:MVVMApplication.View     5      9System&clr-namespace:System;assembly=mscorlib     5      5Infra#clr-namespace:MVVMApplication.Infra     5        � 	Resources  5       �� 
TargetType �� Property �� Value   professionEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName��%�  '��       '�� �     '��      &	  V    �� 5   
   " ��6   �5      �� 5       � ��$ 3q�6+   67   �� 5       � ��$
 Left=�68   6G   5      �� 5   
   " ��6   �5      �� 5       � ��$ 80��6*   67   �� 5       � ��$ 3q�6+   67   5      �� 5   
   " ��6   �5      �� 5       � ��$ 3q�6+   67   5      S� 5   
   $ 	GetValues��64   "  6K    5      M� 5      $ Infra:Profession��6   5!      5"      .��5#      �  � RowDefinitions 5$   
   �� 5%      $
��Auto �6   6,   �� 5&      $
��Auto �6   6,   �� 5'      $
��Auto �6   6,   .+�5)   
   &   System.Windows.Controls.DataGrid  $��0��6   ��6    �� *PersonCollection+	 �� SelectedItem	 5*      �� *SelectedPerson+
 �� Mode$
 TwoWay=�6I   � 5+   
   $��1��6    � DataContext 6   �� *SelectedPerson+ 5,      �� 5-      $
��Auto �6    60   �� 5.      $
��Auto �6    60    � ColumnDefinitions 50      �� 51      $
��Auto �6#   62   �� 52      $
��Auto �6#   62   �� 53      $
��Auto �6#   62   �� 54      $
��Auto �6#   62   .+�57      �� $��0��6   $��0��6%   $��
First Name��65   6I   �� 58      $��0��6   $��1��6%   $��	Last Name��65   6H   �� 59      $��0��6   $��2��6%   $
��City��65   6C   �� 5:      $��0��6   $��3��6%   $��
Profession��65   6I   �� 5<      $��1��6   $��0��6#   ��63   �� *	FirstName+6P   �� 5=      $��1��6   $��1��6#   ��63   �� *
LastName+6O   �� 5>      $��1��6   $��2��6#   ��63   �� *CityOfResidence+6V   �� 5?      $��1��6   $��3��6$   	 64   �� *
Profession+��5@      ��  �� Source# [  6X   5A      �� 5B   
   $��2��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   .+�5C      �� $��Add New��6-   ��6   �� *Add+6A   �� 5D      $��Update��6.   ��6   �� *Save+6A   �� 5E      $��Delete��60   ��6   �� *Delete+6C   5F      5G      5H      