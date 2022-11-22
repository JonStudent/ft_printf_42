/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbasilio <jbasilio@student.42lisboa.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/23 18:47:15 by jbasilio          #+#    #+#             */
/*   Updated: 2022/03/26 05:56:30 by jbasilio         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
			DESCRIPTION:
	Returns the lenght of the (const char)'s'.
*/

#include "libft.h"

size_t	ft_strlen(const char *s)
{
	size_t	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}
